#!/bin/python3

import command

for container in [
    {'name': 'lanstreamer-api', 'path': '~Apps/lanstreamer-api/'},
    {'name': 'lanstreamer-web', 'path': '~Apps/lanstreamer-code/lanstreamer/'},
    {'name': 'lanstreamer-auth', 'path': '~Apps/lanstreamer-code/lanstreamer-web/'},
]:
    command.run(f'~/Apps/devops-scripts/upload-containers {container["name"]} {container["path"]}')
