#!/bin/bash

mkdir -p $HOME/volumes/eos/srv/e/src $HOME/volumes/eos/srv/e/zips $HOME/volumes/eos/srv/e/logs $HOME/volumes/eos/manifests

docker run \
-v "$HOME/volumes/eos/srv/e/src:/srv/src" \
-v "$HOME/volumes/eos/srv/e/zips:/srv/zips" \
-v "$HOME/volumes/eos/srv/e/logs:/srv/logs" \
-v "$HOME/volumes/eos/srv/e/ccache:/srv/ccache" \
-v "$HOME/volumes/eos/manifests:/srv/local_manifests" \
-e "BRANCH_NAME=v1-q" \
-e "DEVICE_LIST=herolte" \
-e "REPO=https://gitlab.e.foundation/e/os/android.git" \
-e "INCLUDE_PROPRIETARY=false" \
-e "CLEAN_AFTER_BUILD=false" \
-e "SIGN_BUILDS=true" \
