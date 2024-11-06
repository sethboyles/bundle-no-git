#!/bin/bash
docker build . -t bundle-no-git
docker run -v /Users/sethboyles/workspace/bundle-no-git:/bundle-no-git bundle-no-git:latest
