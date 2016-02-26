#!/bin/bash

echo "> Is there a cluster running?"
sleep 1
echo "\$ minimesos info"
sleep 1
minimesos info
sleep 1

echo "> Now let's start a cluster"
sleep 1
echo "\$ minimesos up"
sleep 1 
minimesos up
sleep 1

echo "> Let's export the minimesos environment"
sleep 1
echo "\$ \$(minimesos)"
sleep 1
$(minimesos)
sleep 1

echo "> Is the cluster running?"
sleep 1
echo "\$ minimesos state | jq .version"
sleep 1
minimesos state | jq .version
sleep 1

echo "> Let's destroy the cluster"
sleep 1
echo "\$ minimesos destroy"
sleep 1
minimesos destroy
sleep 1
