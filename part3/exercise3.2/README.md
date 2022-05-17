# Exercise 3.2

### Start by creating an image, use command:
docker build . -t project

### Run the image by command:
docker run -it -v /var/run/docker.sock:/var/run/docker.sock project
