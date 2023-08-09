# hpcc-values

The goal of hpcc-values was to provide solutions for situations in which the default values.yaml may be inconvenient to use due to it having a lot of content. As of now, there are two solutions: overrides and hpcc-lite.

## [Overrides](./overrides/)
Overrides uses files to override the default values.yaml which makes it useful for small scenarios because it requires less work.

## [Hpcc-lite](./hpcc-lite/)
Hpcc-lite uses a custom values.yaml file which is useful as it allows you to create whatever configurations you want. It does requrie more work, however, because you need to create the files from scratch.

## [Hpcc-lite-script](./hpcc-lite-script/)
It should be moved to helm in the cloned HPCC-Platform source.
HPCC-Lite Script is a python script that automatically clones yaml files for you. Just make sure to put in the correct information in the user defined variables.

## Before you deploy
Make sure you downloaded the Chart and repo. For hpcc-lite, make sure you removed the values.yaml file

## How to verify if it's working
If you want to verify if hpcc-lite you can go to the playground in eclwatch, but if you want to check common-values.yaml, you can by seeing if you can upload a file to dropbox in eclwatch.