#!/bin/bash

# Make sure that when using this file, you are in the correct directory, and put in the correct path.
# For example, you can change -f noroxie-twothors.yaml to -f ..\..\hpcc-values\hpcc-lite\roxie.yaml.

helm install mycluster hpcc/ --set global.image.version=9.2.2 \
    #-f common-values.yaml \
    #-f cost.yaml \
    #-f hthor.yaml \
    -f roxie.yaml \
    #-f thor.yaml \
    #-f twothors.yaml \
    #-f twothors-onehthor-oneroxie.yaml \
    #-f esdl.yaml \
    #-f sql2ecl.yaml \