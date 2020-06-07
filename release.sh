#!/usr/bin/env bash

die() {
    echo "$1"
    exit 1
}

version=$1

aws ssm put-parameter --name /figgy/deployments/current_version --type "String" --value "$version" --overwrite || die "Error updating figgy version in ParameterStore"
aws ssm put-parameter --name /figgy/deployments/rollout_modifier --type "String" --value "1" --overwrite || die "Error updating figgy rollout modifier in ParameterStore"
