#!/bin/bash

helm install mycluster hpcc/ --set global.image.version=9.2.2 \
    #-f common-values.yaml \
    #-f cost.yaml \
    #-f hthor.yaml \
    #-f roxie.yaml \
    #-f thor.yaml \
    #-f twothors.yaml \
    #-f twothors-onehthor-oneroxie.yaml \
    #-f esdl.yaml \
    #-f sql2ecl.yaml \