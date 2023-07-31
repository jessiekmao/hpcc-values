@echo off

rem Make sure that when using this file, you are in the correct directory, and put in the correct path.
rem For example, you can change -f noroxie-twothors.yaml to -f ..\..\hpcc-values\hpcc-lite\roxie.yaml.

helm install mycluster ./hpcc --set global.image.version=9.2.2 ^
 -f common-values.yaml ^
 -f roxie.yaml ^
 -f values-auto-azurefile.yaml
rem -f cost.yaml ^
rem -f hthor.yaml ^
rem -f thor.yaml ^
rem -f twothors.yaml ^
rem -f twothors-onehthor-oneroxie.yaml ^
rem -f esdl.yaml ^
rem -f ecl2sql ^