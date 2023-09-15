FROM node:alpine

WORKDIR  usr/app/manzowa-todo-scripts
COPY .  /usr/app/manzowa-todo-scripts/

RUN npm install

COPY . .
RUN npm run build

ENV PATH=$PATH:/usr/app/manzowa-todo-scripts/node_modules/.bin
ENV NODE_ENV=development

CMD ["npm start"]