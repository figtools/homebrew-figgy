#!/usr/bin/env bash

die() {
    echo "$1"
    exit 1
}

version=$1
cloud_version_requirement=$2

echo "Setting current version to: $version"
echo "Setting current version cloud requirement to: $cloud_version_requirement"

aws ssm put-parameter --name /figgy/deployments/current_version --type "String" --value "$version" --region 'us-east-1' --overwrite || die "Error updating figgy version in ParameterStore"
aws ssm put-parameter --name /figgy/deployments/rollout_modifier --type "String" --value "100" --region 'us-east-1' --overwrite || die "Error updating figgy rollout modifier in ParameterStore"
aws ssm put-parameter --name /figgy/deployments/cloud_version_requirement --type "String" --value "$cloud_version_requirement" --region 'us-east-1' --overwrite || die "Error updating figgy cloud version requirement in ParameterStore"
