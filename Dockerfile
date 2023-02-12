#First stage building image:
FROM node:alpine3.17 as build
RUN mkdir -p /app

WORKDIR /app

COPY package.json /app/
RUN npm install

COPY . /app/

RUN npm run build --prod

#final Stage 
FROM nginx:alpine 
COPY --from=build /app/dist/helpdesk /usr/share/nginx/html


#Thank you.

