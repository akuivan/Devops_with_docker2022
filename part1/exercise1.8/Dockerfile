FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY exercise_script.sh .

RUN chmod +x exercise_script.sh

RUN apt-get update && apt-get install -y curl

CMD ./exercise_script.sh