#!/bin/bash

# Make sure that when using this file, you are in the correct directory, and put in the correct path.
# For example, you can change -f noroxie-twothors.yaml to -f ..\..\hpcc-values\overrides\noroxie-twothors.yaml.

helm install mycluster hpcc/ --set global.image.version=9.2.2 \
    -f noroxie-twothors.yaml \
    #-f nothor-tworoxies.yaml \
    #-f noroxie.yaml \
    #-f tworoxies.yaml \
    #-f nothor.yaml \
    #-f twothors.yaml \