#!/bin/bash

sudo service postgresql start
# pragma: allowlist nextline secret
sudo -u postgres psql -c "ALTER USER postgres with password 'postgres';"
sudo -u postgres psql -c "CREATE EXTENSION vector;"
