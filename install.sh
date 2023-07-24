1) Update and Upgrade all the pre-installed packages of Kali linux 
$ sudo apt update 
$ sudo apt upgarde 

2) Install the required packages for docker using the following command :
$ sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release software-properties-common

3) Create a new directory to store the key for the repository for Docker
$ sudo mkdir -p /etc/apt/keyrings

4) Curl Command to download a GPG key from the docker website 
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

5) This command pulls down the architecture (amd=64) and the corresponding verison of the operating system, stores it in docker.list 
$  echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list
  
6) Installation command 
$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

7) Head over to the /etc/groups directory and add your username to end of the docker line. 
eg: docker:x:144:"___username___"

8) Run the following command to see if the docker is running
$ docker info

9) Create a container hello-world
$ docker run hello-world
