# ng-cli on Docker

## Goals
This repo has the goal to share the same enviroment between NDS team members.

## Usage
You'll need build the docker image to be able to use it in your enviroment. To build use these steps:

- Entry in the Dockerfile path:

`$ cd dockerfile/path`

- Build docker image

`$ docker build --rm -f -t ng-docker dockerfile .`

- Generate ng app:

`$ docker run --rm -v $PWD:/app ng-docker ng new ng-app`

- Change the project owner:

`$ chown -R $USER:$USER ng-app`

Now you're able to edit files in project.

- Run test server:

`$ docker-compose up`

That's all folks!
