@echo off

 

HELM_OPTIONS = "hpcc ./hpcc --set global.image.version=9.2.2"

-f common-values.yaml ^

-f cost.yaml ^

-f hthor.yaml ^

-f thor.yaml ^

-f twothors.yaml ^

-f roxie.yaml ^

-f twothors-onehthor-oneroxie.yaml ^

-f esdl.yaml ^

-f ecl2sql ^