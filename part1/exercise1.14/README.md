# Exercise 1.14
Frontend's Dockerfile was modified while backend's Dockerfile (inside backend folder just in case) wasn't

### Commands used
docker build . -t backend && docker run -p 127.0.0.1:8080:8080 backend

docker build . -t frontend && docker run -p 127.0.0.1:5000:5000 frontend