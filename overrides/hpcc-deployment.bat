@echo off

rem Make sure that when using this file, you are in the correct directory, and put in the correct path.
rem For example, you can change -f noroxie-twothors.yaml to -f ..\..\hpcc-values\overrides\noroxie-twothors.yaml.

helm install mycluster ./hpcc --set global.image.version=9.2.2 ^
 -f noroxie-twothors.yaml
rem -f localfile.yaml
rem -f nothor-tworoxies.yaml
rem -f noroxie.yaml
rem -f tworoxies.yaml
rem -f nothor.yaml
rem -f twothors.yaml
rem -f examples\local\values-localfile.yaml