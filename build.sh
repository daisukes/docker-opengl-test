#!/bin/bash

for service in xenial-opengl xenial-x11 bionic-opengl bionic-x11
do
    docker-compose build $@ --build-arg UID=$UID $service
done

