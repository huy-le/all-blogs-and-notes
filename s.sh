#!/bin/bash
# I want to write bash with parameters

git add *
git commit -m "$1" && git push origin master && echo "🚀 On the cloud"
