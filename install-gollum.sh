#!/bin/bash

bundle install --path ../vendor/bundle
bundle install --binstubs ../bin

echo "vendor/" >> ../.gitignore
echo "bin/" >> ../.gitignore



