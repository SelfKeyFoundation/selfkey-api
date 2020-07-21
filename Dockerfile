FROM node:12.18.2-alpine3.12
COPY package.json yarn.lock /var/www/
WORKDIR /var/www
RUN yarn
COPY bin public routes views app.js /var/www/

EXPOSE 3000
CMD ["ls", "-la"]