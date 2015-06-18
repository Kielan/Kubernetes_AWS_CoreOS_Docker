This guide on running kubernetes on aws is made for developers with limited exposure to DevOps and so will cover some extra regions of knowledge such as TCP/IP and DNS.

if you've ever noticed that out of nowhere your local terminal kubectl cannot access your kubernetes cluster, specifically if you recieve

Unable to connect to the server: dial tcp 52.74.5.61:80: i/o timeout

What is happening here is that the kubectl client is trying to ping the kubernetes api at the IP 52.74.5.61:80 but the API is not responding.

The 2 main reasons for this happening is
1. you are pointing to the wrong IP
1 a. you are pointing to the wrong host port

2. your VPC security settings are messed up

Your secure tunnel for API communication may have timed out, in which case simply create an ssh tunnel to reach the API

ssh -f -nNT -L 8080:127.0.0.1:8080 core@<master-public-ip>

aws sometimes terminates a connection of an idle ssh 

sample json's
