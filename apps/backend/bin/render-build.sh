#!/usr/bin/env bash

set -o errexit

bundle check || bundle install

bin/rails db:migrate
