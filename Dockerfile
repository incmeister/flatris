FROM node

RUN mkdir /skillbox
WORKDIR /skillbox
COPY . /skillbox

RUN yarn install
RUN yarn test
RUN yarn build

CMD yarn start