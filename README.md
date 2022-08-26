# AzSkuChecker

Easily check whether a VM SKU is available in a given region, and in what zones.

### Parameters:
* Location - region name
* SKU - VM SKU name

### Output:
Name - Value pairs where
* Name is the name of the matching VM SKU
* Value is either list of zones in which the VM SKU is available, or N/A if it's not available in the given region

### Examples
Check availability of Standard D64 v5 VM in West Europe region 
```
.\AzSkuChecker.ps1 -location westeurope -sku Standard_D64_v5
```
Check availability of all D series VMs in West Europe region
```
.\AzSkuChecker.ps1 -location westeurope -sku Standard_D
```
