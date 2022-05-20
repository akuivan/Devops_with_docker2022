FROM node:16-alpine as build-stage

EXPOSE 5000

WORKDIR /app

COPY . .

RUN npm install \
	npm run build \
	npm install -g serve

ENV REACT_APP_BACKEND_URL="http://localhost:8080" 

CMD ["serve","-s","-l","5000","build"]

FROM nginx:1.19-alpine

COPY --from=build-stage /app/build/ /usr/share/nginx/html



