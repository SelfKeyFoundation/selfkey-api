FROM node:12.18.2-alpine3.12
WORKDIR /var/www/
COPY package.json yarn.lock /var/www/
ARG NODE_ENV
ENV NODE_ENV=$NODE_ENV
RUN yarn
COPY bin /var/www/bin/
COPY src /var/www/src/

EXPOSE 3000
ENTRYPOINT [ "yarn" ]
CMD ["start"]