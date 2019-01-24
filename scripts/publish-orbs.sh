#!/bin/bash -eo pipefail

# Check for circleci
command -v circleci > /dev/null || { echo "circleci is required to update the repo. Install it with 'brew install circleci'" >&2; exit 1; }

for ORB_DIR in src/*; do
  ORB_NAME="wordpress-mobile/$(basename $ORB_DIR)"
  echo "Publishing '$ORB_NAME' from '$ORB_DIR' ..."

  circleci orb publish increment "$ORB_DIR/orb.yml" "$ORB_NAME" "patch"; RETURN_CODE=$?

  if [[ $RETURN_CODE != 0 ]]; then
  	exit 1
  fi
done
