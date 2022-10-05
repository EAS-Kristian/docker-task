# docker-task

I have written a script that uses curl to retrieve data from an api endpoint. Using curl allowed me to specify where i wanted the data from (url) and specifc data i wanted. I then used -o to output the data from the curl command to a file called "output2.json", if this file didn't exist then when run, it would create it as a new file.

I then created a Docker file and used a base image i found online. Below the base image i defined environmental variable url as the web link to the source of the data. I then provided a working directory named Kris and proceeded to mount it to my current directory "(pwd):/kris" in the docker run command 

Following this i used CMD to execute my script which was located in a file called "envvariable.sh".

Below are the commands to be build the docker container and then run it-

The docker build command builds the docker image by reading the instructions from a text file.The "-t" is the image tag

The docker run command includes "-it" which allows it to be interactive, the "-v" makes the data inside the container live outside the Union File System and directly accessible on the host.I then mounted the directory "kris" with my current working directory (pwd), this is so once the container is destroyed the file still exists on the machine. So i didn't have to build the container each time i ran the script, i included my environment variables in the docker run command.



## Docker build command example
``` 
docker build -t apiimage:latest .
```




## Run docker command example

``` bash
docker run -it -v $(pwd):/kris -e id=5 -e resource=albums apiimage:latest
```







