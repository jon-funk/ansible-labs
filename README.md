# Ansible Labs
This repo contains a set of Ansible labs that act as an intro to the breadth of capabilities that Ansible has in the IT automation world. The labs will also be themed around general DevOps style work.

## Automation
This repo contains basic github actions that perform static linting on commit pushes. These are not covered in the labs but are present for additional learning material related to DevOps pipelines.

[![Linting](https://github.com/jon-funk/ansible-labs/actions/workflows/lint.yaml/badge.svg)](https://github.com/jon-funk/ansible-labs/actions/workflows/lint.yaml)

`What's this?` It's a badge that shows the status of various pipeline activities 'at a glance' and are common in many projects.

## Requirements
* `docker` a containerization tool
* `docker-compose` a wrapper for docker that provides additional tooling for defining containers via yaml configs

`Note:` refer to [requirements.txt](https://github.com/jon-funk/ansible-labs/blob/main/requirements.txt) for explicit dependencies if you'd like to set up the labs outside of a containerized environment. (this is discouraged)

* Understanding of [yaml](https://yaml.org/) which is `whitespace sensitive`

## How to interact with these labs
These labs can be worked on in a containerized environment (sandboxed) so that you don't have to install additional dependencies. You just need docker + docker-compose!

A `devcontainer` configuration is also supplied so that you can do container-native development with vscode if you wish via [remote-containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Clone the code to your local machine in order to work with it
`git clone git@github.com:jon-funk/ansible-labs.git`

`Note:` this clone command will create the directory `ansible-labs/` with its contents for you

## Start the ansible container and connect to it through a bash shell
`docker-compose up -d ansible && docker-compose exec ansible bash`

`Note:` this will `build` the ansible image the first time you run it

## How do I leave the lab?
`exit` will kill the bash shell and exit the container (but the container is still running)

`docker-compose down` will spin down the `ansible` container

`Note:` although `down` will work anywhere, other `docker-compose` commands require you to be in the same directory as the [docker-compose.yaml](https://github.com/jon-funk/ansible-labs/blob/main/docker-compose.yaml) file so that it understands the container definitions

`Note:` if you don't take down the container it will keep running until you restart

## Environment Variables
passing environment variables is supported in the `ansible` container defition via creation of a `.env` file

`Note:` Following best-practices, these `.env` files are *NOT* version controlled and must be created by the individual