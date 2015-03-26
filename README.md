## Node.js w/ Bower & Grunt Dockerfile


This repository contains **Dockerfile** of [Node.js](http://nodejs.org/) w/ [Bower](http://bower.io/) & [Grunt](http://gruntjs.com/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/digitallyseamless/nodejs-bower-grunt/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [library/node](https://registry.hub.docker.com/_/node/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/digitallyseamless/nodejs-bower-grunt/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull digitallyseamless/nodejs-bower-grunt`

   (alternatively, you can build an image from Dockerfile: `docker build -t="digitallyseamless/nodejs-bower-grunt" github.com/digitallyseamless/docker-nodejs-bower-grunt`)


### Usage

    docker run -it --rm digitallyseamless/nodejs-bower-grunt

#### Run `node`

    docker run -it --rm digitallyseamless/nodejs-bower-grunt node

#### Run `npm`

    docker run -it --rm digitallyseamless/nodejs-bower-grunt npm

#### Run `bower`

    docker run -it --rm digitallyseamless/nodejs-bower-grunt bower

#### Run `grunt`

    docker run -it --rm digitallyseamless/nodejs-bower-grunt grunt
