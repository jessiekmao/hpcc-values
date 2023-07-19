# hpcc-values

### The values.yaml file provides common definitions.
### To deploy a component, you should pass the correspondant yaml file to your helm install command with the values.yaml file.

### If you are already in the hpcc directory, then you just need put a "." in place of where the path to Chart.yaml would be.
### Example:
### helm install mycluster . --set global.image.version=9.0.24-rc1 -f ..\ ..\ ..\hpcc-values\hpcc-lite\hthor.yaml -f ..\ ..\ ..\hpcc-values\hpcc-lite\common-values.yaml -f ..\examples\azure\values-auto-azure.yaml

### You can change the version to whatever you want.
### Also, if you would like to change the file you want to deploy, then just replace hthor.yaml, or get rid of it if you want to deploy common-values.yaml by itself.