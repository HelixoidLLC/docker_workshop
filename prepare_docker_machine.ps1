IF(!$Env:DOCKER_MACHINE_NAME) {
  $Env:DOCKER_MACHINE_NAME = "dev"
}

docker-machine ssh "$Env:DOCKER_MACHINE_NAME" mkdir /home/docker_workshop
docker-machine ssh "$Env:DOCKER_MACHINE_NAME" "sudo mount -t vboxsf -o uid=1000,gid=50 docker_workshop /home/docker_workshop"
