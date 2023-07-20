# hpcc-values

### The common-values.yaml file provides common definitions.
### To deploy a component, you must pass the correspondant yaml file to your helm install command with the common-values.yaml file.

### If you are already in the helm directory, then you just need put a "hpcc" in place of where the path to Chart.yaml would be.
### Example:
### helm install mycluster hpcc --set global.image.version=9.0.24-rc1 -f <base directory> -f ..\ ..\hpcc-values\hpcc-lite\common-values.yaml -f examples\azure\values-auto-azurefile.yaml

### You can change the version to whatever you want.
### Also, if you would like to change the file you want to deploy, then just replace hthor.yaml, or get rid of it if you want to deploy common-values.yaml by itself.