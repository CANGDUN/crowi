FROM node:8.11.2

ARG NODE_ENV="production"

ENV CROWI_VERSION v1.7.9
ENV NODE_ENV ${NODE_ENV}

WORKDIR /crowi

ADD . /crowi
RUN npm install --update npm@latest -g
RUN npm install --unsafe-perm
RUN npm audit fix

CMD npm run start
