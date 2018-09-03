#!/bin/bash

openssl aes-256-cbc -K $encrypted_0c86d3b0ef72_key -iv $encrypted_0c86d3b0ef72_iv -in travis_key.enc -out travis_key -d
chmod 600 travis_key
eval "$(ssh-agent -s)"
ssh-add travis_key

./node_modules/.bin/gh-pages -d docs/ -r git@github.com:${TRAVIS_REPO_SLUG}.git