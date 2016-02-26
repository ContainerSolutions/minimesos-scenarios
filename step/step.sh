#!/usr/bin/env bash

function step {
  MESSAGE=$1;
  COMMAND=$2;
  echo "> $MESSAGE"
  sleep 1
  echo "\$ $COMMAND"
  sleep 1
  $COMMAND
  sleep 1
}