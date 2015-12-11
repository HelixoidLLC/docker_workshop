#> docker-machine create --driver virtualbox dev
docker-machine stop dev
docker-machine rm dev

#> docker build -t workshop:java8u66 docker_java

#> docker run workshop:java8u66 java -version
java version "1.8.0_66"
Java(TM) SE Runtime Environment (build 1.8.0_66-b17)
Java HotSpot(TM) 64-Bit Server VM (build 25.66-b17, mixed mode)

#> docker build -t workshop:sb1.3.0 .\docker_spring_boot

#> docker build -t workshop:app1.0 .\docker_app

docker run -d -p 8080:8080 workshop:app1.0
docker ps
docker logs d2f6b49d9b33
curl localhost:8080

docker-machine create -d virtualbox ff
