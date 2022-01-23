# How to build a container image

With an app created, we just create a file name "Dockerfile". A Dockerfile is a script of instructions to create the container iamge.

`The example for this case is inside the app dir. Come back here right after you see what is going on there`

To run and create the image, use the following command:

`sudo docker build -t getting-started .`

The command will read the Dockerfile and install the required dependencias, for example, the node 12.

And then we copied in the app and used yarn to install the application dependencies. The CMD specifies the commando to run when we start a container from this image.

And the `-t` flag just give a name to the container image. With that, we can refer to the container by that name.

## Start the app

We just need to run docker specifying the tag name  that we created

`sudo docker run -dp 3000:3000 getting-started`

the `-d` flag do the same thing in the part 1. And the `p` specify the local port and the container port. We already named the container image in the previous command, so we can use that name in this command as well! 

after these commands, we can access localhost:3000 and our app will be running ;D