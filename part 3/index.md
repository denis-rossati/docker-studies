# Updating the app

If we just change our source code, build the image again and run the container with the new code:

`(... code change ...)`

`sudo docker build -t container_name .`

`sudo docker run -dp 3000:3000 container_name`

We probably are going to face an error, because we are creating a new ID for a new container, but the old container still running. Thats why it is important to know how to stop and remove a container:


This will stop de execution of a container
`sudo docker stop [container_name or container ID]`

This will remove the container from the container list
`sudo docker rm [container_name or container ID]`

"Container list? Container ID?"

We can check all of our containers with `sudo docker ps`, the output is something like

| CONTAINER ID | IMAGE          | COMMAND                | CREATE         | STATUS       | PORTS | NAMES          |
|--------------|----------------|------------------------|----------------|--------------|-------|----------------|
| 1dj98n3f8193 | container_name | "docker-entrypoint.s…" | 10 minutes ago | Up 9 minutes | :3000 | fictional_name |
| (others containers here) | (others containers here)  | (others containers here)  | (others containers here)  | (others containers here)  | (others containers here)  | (others containers here) |

in this case, we could stop a container with

`sudo docker stop 1dj98n3f8193` or `sudo docker stop container_name`

and remove with

`sudo docker rm 1dj98n3f8193` or `sudo docker rm container_name`
