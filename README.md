This is a sample Rails application for deployment using my [docker deploy script](https://github.com/Jayzz55/docker-deploy-script).

This rails app is deployed to a server in docker containers together with the following services:
* action cable
* sidekiq
* postgres
* redis
* cadvisor
* elk stack (elastic search, logstash, and kibana)

To get the app runnning, run: `docker-compose up website`
To get the elk stack runnning, run: `docker-compose up kibana`

This Rails app is generated using [Orats](https://github.com/nickjj/orats) which provides a lot of boilerplate to deploy rails on docker.

Part of this deployment strategy is to use NGINX in the forefront to do reverse proxy with following ports:
* port 80 / 443 - rails app (port 3000)
* port 5000 - cadvisor (port 8080)
* port 5001 - kibana (port 5601)
