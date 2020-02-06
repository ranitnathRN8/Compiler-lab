// C program to illustrate 
// open system call 
#include<stdio.h> 
#include<fcntl.h> 
#include<errno.h> 
#include<unistd.h>
#include<fcntl.h>
#include<sys/stat.h>
#include<sys/types.h>
extern int errno; 
int main() 
{	 
    int n;
    char buff[50];	// declaring buffer 
	// if file does not have in directory 
	// then file foo.txt is created. 
	int fd = open("foo.txt", O_CREAT | O_RDWR ); 
	
	printf("fd = %d \n", fd); 
	
	if (fd ==-1) 
	{ 
		// print which type of error have in a code 
		printf("Error Number % d\n", errno); 
		
		// print program detail "Success or failure" 
		perror("Program");				 
	} 

    return 0;
    
} 
