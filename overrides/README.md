# hpcc-values

## How to use overrides
1. Download the HPCC Platform source
2. Go to the helm directory
3. Deploy hpcc using the helm install command

### Example:
helm install mycluster hpcc --set global.image.version=\<version\> -f \<base directory\>/<the configure yaml file/> -f /<optional storage file/>

## noroxie.yaml
This file removes roxie and the roxie eclagent

## nothor.yaml
Removes thor

## tworoxies.yaml
Adds another roxie

## twothors.yaml
Adds another thor

## noroxie-twothors.yaml
This file deploys hthor, two thors, and roxie-workunit, but removes roxie.

## nothor-tworoxies.yaml
This file deploys hthor, roxie-workunit, and two roxies.

## hpcc-deployment.bat
This file is an example of how you can use a file to deploy everything on windows.
You can use it by uncommenting or adding the files you want to deploy.

## hpcc-deployment.sh
This file is an example of how you can use a file to deploy everything on windows.
You can use it by uncommenting or adding the files you want to deploy.