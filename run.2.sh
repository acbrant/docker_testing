docker build --build-arg PARENT=$(cat .docker_name) -f 2.Dockerfile -t $(cat .docker_name_two)  .
docker run --rm -p 5000:5000 -it $(cat .docker_name_two)