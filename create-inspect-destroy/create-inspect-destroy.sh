#!/usr/bin/env bash

. ../step/step.sh

step "Is there a cluster running?" "minimesos info"
step "Now let's start a cluster" "minimesos up"
step "Let's export the minimesos environment" "$(minimesos)"
step "Is the cluster running?" "minimesos state | jq .version"
step "Let's destroy the cluster" "minimesos destroy"