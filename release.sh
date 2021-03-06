#!/usr/bin/env bash

die() {
    echo "$1"
    exit 1
}

version=$1

echo "Setting current version to: $version"

aws ssm put-parameter --name /figgy/deployments/current_version --type "String" --value "$version" --region 'us-east-1' --overwrite || die "Error updating figgy version in ParameterStore"
aws ssm put-parameter --name /figgy/deployments/rollout_modifier --type "String" --value "100" --region 'us-east-1' --overwrite || die "Error updating figgy rollout modifier in ParameterStore"
