@echo off



helm install mycluster ./hpcc --set global.image.version=9.2.2 ^
-f common-values.yaml
rem -f roxie.yaml ^
rem -f cost.yaml ^
rem -f hthor.yaml ^
rem -f thor.yaml ^
rem -f twothors.yaml ^
rem -f twothors-onehthor-oneroxie.yaml ^
rem -f esdl.yaml ^
rem -f ecl2sql ^