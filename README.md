## Rails GraphQL Microservices with Apollo Federation Demo

This repository is a demo of using Apollo Federation to build a single schema on top of multiple Rails microservices.
### Installation

To run this demo locally, pull down the repository then run the following commands:

```sh
cd account && bundle install && rails db:create db:migrate db:seed
cd product && bundle install && rails db:create db:migrate db:seed
cd review  && bundle install && rails db:create db:migrate db:seed
cd federation-demo && npm install
```
On different terminals, go to each service folder and run `rails s` in different ports.:
```sh
cd account && rails s -p 3000
cd product && rails s -p 3001
cd review  && rails s -p 3002
```

This will install all of the dependencies for the gateway and each underlying service.

```sh
cd federation-demo
npm run start-services
```

This command will run all of the microservices at once. They can be found at http://localhost:4001, http://localhost:4002,and http://localhost:4003.

In another terminal window, run the gateway by running this command:

```sh
npm run start-gateway
```

This will start up the gateway and serve it at http://localhost:4000

### What is this?

This demo showcases four partial schemas running as federated microservices. Each of these schemas can be accessed on their own and form a partial shape of an overall schema. The gateway fetches the service capabilities from the running services to create an overall composed schema which can be queried. 

To see the query plan when running queries against the gateway, click on the `Query Plan` tab in the bottom right hand corner of [GraphQL Playground](http://localhost:4000)

To learn more about Apollo Federation, check out the [docs](https://www.apollographql.com/docs/apollo-server/federation/introduction)
