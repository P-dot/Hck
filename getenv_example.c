#include <stdio.h>
#include <stdlib.h>

//The function getenv(), accepts the name of an environment variable as its only argument 
//and returns thatś variableś memory address

int main(int argc, char *argv[]) {
    printf("%s is at %p\n", argv[1], getenv(argv[1])); 
}
