#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <semaphore.h>
#include <fcntl.h>
#include <errno.h>
#include "../taskSolver.c"

const int buf_size = 10000;
sem_t *sem;

void fileReader(int *fd, char* input_file_name) {
    char str_buf[buf_size];
    size_t size_of_file;

    printf("reader started\n");

    if (close(fd[0]) < 0) {
        printf("parent: Can\'t close reading side of pipe\n");
        return;
    }

    int input_file = open(input_file_name, O_RDONLY);
    if (input_file <= 0) {
        printf("\nCan't open file to read\n");
        close(input_file);
        return;
    }
    size_of_file = read(input_file, str_buf, buf_size);

    close(input_file);

    int size = write(fd[1], str_buf, size_of_file);

    if (size != size_of_file) {
        printf("Can\'t write all string to pipe\n");
        return;
    }
    if (close(fd[1]) < 0) {
        printf("parent: Can\'t close writing side of pipe\n");
        return;
    }

    printf("Reader exit\n");
}

void dataProcess(int *fd) {
    printf("process started\n");
    char str_buf[buf_size];

    int size = read(fd[0], str_buf, buf_size);
    if (size < 0) {
        printf("Can\'t read string from pipe\n");
        return;
    }
    if (close(fd[0]) < 0) {
        printf("child: Can\'t close reading side of pipe\n");
        return;
    }

    int result = taskSolver(str_buf, size);

    size = write(fd[1], &result, sizeof(int));

    if (size != sizeof(int)) {
        printf("Can\'t write all string to pipe\n");
        return;
    }
    if (close(fd[1]) < 0) {
        printf("parent: Can\'t close writing side of pipe\n");
        return;
    }
    printf("Process exit\n");
}

void fileWriter(int *fd, char* output_file_name) {
    printf("writer started\n");
    int result;

    if (close(fd[1]) < 0) {
        printf("child: Can\'t close writing side of pipe\n");
        return;
    }
    int size = read(fd[0], &result, sizeof(int));
    if (size < 0) {
        printf("Can\'t read string from pipe\n");
        return;
    }

    int output_file = open(output_file_name, O_WRONLY | O_CREAT | O_TRUNC, 0644);

    if (output_file <= 0) {
        printf("\nCan't open file to write\n");
        close(output_file);
        return;
    }

    char str[10];
    int size_ = sprintf(str, "%d", result);

    write(output_file, str, size_);
    close(output_file);

    if (close(fd[0]) < 0) {
        printf("child: Can\'t close reading side of pipe\n");
        return;
    }
    printf("Writer exit\n");
}

int main(int argc, char *argv[]) {
    if (argc < 3) {
        printf("Not enough arguments\n");
        return 0;
    }

    int fd[2], i;
    pid_t pid;

    unsigned int value = 1;

    if (pipe(fd) < 0) {
        printf("Can\'t open pipe\n");
        exit(-1);
    }

    sem = sem_open("pSem", O_CREAT | O_EXCL, 0644, value);

    for (i = 0; i < 3; ++i) {
        pid = fork();

        if (pid < 0) {
            sem_unlink("pSem");
            sem_close(sem);
            printf("\nfork error\n");
        } else if (pid == 0) {
            break;
        }
    }

    if (pid != 0) {  // parent
        while ((pid = waitpid(-1, NULL, 0))) {
            if (errno == ECHILD)
                break;
        }

        printf("\nParent: All children have exited.\n");

        sem_unlink("pSem");
        sem_close(sem);
        exit(0);
    } else {  // child
        sem_wait(sem);

        switch (i) {
            case 0:
                fileReader(fd, argv[1]);
                break;
            case 1:
                dataProcess(fd);
                break;
            case 2:
                fileWriter(fd, argv[2]);
                break;
        }

        sem_post(sem);
    }


    return 0;
}
