# hpcc-values

The common-values.yaml file provides common definitions.
To deploy a component, you must pass the correspondant yaml file to your helm install command with the common-values.yaml file.

If you are already in the helm directory, then you just need put a "hpcc" in place of where the path to Chart.yaml would be.
### Example:
helm install mycluster hpcc --set global.image.version=\<version\> -f \<base directory\> -f ..\ ..\hpcc-values\hpcc-lite\common-values.yaml -f examples\azure\values-auto-azurefile.yaml

You can change the version to whatever you want.
Also, if you would like to change the file you want to deploy, then just replace hthor.yaml, or get rid of it if you want to deploy common-values.yaml by itself.

## common-values.yaml
When deploying common-values.yaml by itself, it can be used to setup dropzone.
It has global definitions, secret, dali, and esp

## roxie.yaml
Roxie.yaml is used to deploy roxie by itself

## hthor.yaml
Hthor.yaml deploys hthor (eclagent and eclccserver)

## thor.yaml
Thor.yaml is used to deploy ONE thor by itself

## twothors.yaml
Twothors.yaml deploys TWO thor clusters

## twothors-onehthor-oneroxie.yaml
This file deploys TWO thors, ONE hthor, and ONE roxie together

## cost.yaml
This file can be used to deploy cost

## esdl.yaml
Esdl.yaml deploys esdl-sandbox

## sql2ecl.yaml
Sql2ecl.yaml deploys sql2ecl

## placement.yaml
Placement.yaml is used for the placement function in Azure

## hpcc-deployment.bat
This file is an example of how you can use a file to deploy everything on windows.
You can use it by uncommenting or adding the files you want to deploy.

## hpcc-deployment.sh
This file is an example of how you can use a file to deploy everything on windows.
You can use it by uncommenting or adding the files you want to deploy.