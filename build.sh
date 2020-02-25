#!/bin/bash

for service in xenial bionic
do
    docker-compose build $@ --build-arg UID=$UID $service
done

