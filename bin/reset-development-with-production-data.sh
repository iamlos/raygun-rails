#!/bin/sh
set -x
source "config.cfg"

DEVELOPMENT_DB="${DB_NAME}_development"

rake db:drop
heroku pg:pull DATABASE_URL $DEVELOPMENT_DB -a $PRODUCTION