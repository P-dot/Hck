#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include "hacking.h"

#define PORT 7890 // The port uses will be connecting to 

int main(void) {
   int sockfd, new_sockfd; // Listen on sock_fd, new connection on new_fd 
   struct sockaddr_in host_addr, client_addr;  // My address information
   socklen_t sin_size;
   int recv_length=1, yes=1;
   char buffer[1024];
}
