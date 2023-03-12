#!/bin/python3

import command

for container in [
    {'name': 'lanstreamer-api', 'path': '/home/krzysztof/Apps/lanstreamer-api/'},
    {'name': 'lanstreamer-web', 'path': '/home/krzysztof/Apps/lanstreamer-code/lanstreamer-web/'},
]:
    response = command.run(['/home/krzysztof/Apps/devops-scripts/upload-containers.sh', container["name"], container["path"]], debug=True)
    print(response.output)
