#!/bin/bash

helm install mycluster hpcc/ --set global.image.version=9.2.2 \
    #-f noroxie-twothors.yaml \
    #-f nothor-tworoxies.yaml \
    #-f noroxie.yaml \
    #-f tworoxies.yaml \
    #-f nothor.yaml \
    #-f twothors.yaml \