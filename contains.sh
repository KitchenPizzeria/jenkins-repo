! /bin/bash

cat index.html | grep "<p>This is jenkins ran job with build number: ${1}</p>"
