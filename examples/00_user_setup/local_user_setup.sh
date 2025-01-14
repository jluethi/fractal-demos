#!/bin/bash

# Set server address
PORT=8010

# Modify default admin credentials
DEFAULT_ADMIN="admin@fractal.xy"
DEFAULT_ADMIN_PW="1234"
NEW_USER_EMAIL=user@fractal.xy
NEW_USER_PWD="my_pwd"
fractal --user $DEFAULT_ADMIN --password $DEFAULT_ADMIN_PW user register $NEW_USER_EMAIL $NEW_USER_PWD

# Write credentials in a .env file (optional) and check new identity
echo -e "\
FRACTAL_USER=$NEW_USER_EMAIL
FRACTAL_PASSWORD=$NEW_USER_PWD
FRACTAL_SERVER=http://localhost:$PORT
" > .fractal.env
fractal user whoami

# Trigger collection of core tasks
fractal task collect fractal-tasks-core --package-version 1.3.2 --package-extras fractal-tasks
