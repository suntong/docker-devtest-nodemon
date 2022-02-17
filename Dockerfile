FROM node:slim

ARG UID=1000
ARG GID=1000

WORKDIR /app
COPY --chown=${UID}:${GID} package*.json ./
# https://stackoverflow.com/questions/44766665/how-do-i-docker-copy-as-non-root

RUN apt-get update
RUN npm install -g nodemon; npm install

COPY --chown=${UID}:${GID} . /app
# -or-
# COPY . .

EXPOSE 1337

USER node
CMD ["npm", "start"]
