# Persisting DB

Each container has its own place to deal with the information, but these changes aren't seen in other containers even though they are the same image. In other words, the updates, deleptions and info created are lost when the container is removed.

## Volumes

Volumes provide a way to connect paths of the container back to the host machine, with this power, we can make changes to the original database instead of the copy of the database.

There are two types of volumes, that will be covered later on.

To create a volume, we can do:

`sudo docker volume create todo-db`

Then we can run the container image and use the flag `-v` to specify a volume:

`sudo docker run -dp 3000:3000 -v todo-db:[db path] [container name]`

ex:

`sudo docker run -dp 3000:3000 -v todo-db:/any/thing todo-app`

If you remove the container image and run the command above again, you I'll see any information that was inserted or updated in the DB.

But this will not happen if you try:

`sudo docker run -dp 3000:3000 todo-app`

---
