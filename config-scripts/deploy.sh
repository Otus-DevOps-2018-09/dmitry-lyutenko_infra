#!/bin/sh

# download app source
git clone -b monolith https://github.com/express42/reddit.git

# install dependies
cd reddit && bundle install

# run app in daemon mode
puma -d
