# Share the app

With an image created, we can send and store our images to dockerhub.

Locally, we login in the docker account:

`sudo docker login -u [username]` you'll be asked for the password just after

then we get our tag

`sudo docker tag [container name] [username]/[reponame]`

example:

`sudo docker tag fulano fulano/first_repo`

but if we do not specify a tag, the tag will be named as "latest", the push will be:

`sudo docker push fulano/docker_hub_image:latest`

---

You can check your images with `sudo docker images`

If you want a remote image, you can pull with `sudo docker fulano/docker_hub_image`

Or even just `sudo docker postgres`, for example.

Then you can check your images again and there it will be.
