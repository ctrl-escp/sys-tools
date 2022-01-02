# sys-tools
A personal assortment of useful scripts:

* [aptdate](aptdate.sh)  
  Upgrade all system packages using [APT](https://en.wikipedia.org/wiki/APT_(software)), and cleanup after.  
  Run `aptdate` to upgrade everything. Use `aptdate clean` to delete cache files before updating.
* [pipdate](pipdate.sh)  
  Update all Python packages for any specific python installation (requires pip to be available).  
  Run `pipdate` to update the default Python3 installation.  
  Run `pipdate /path/to/python` to update a specific python installation.  
  Available for windows as [pipdate.cmd](pipdate.cmd)
* [fix-newline](fix-newline.sh)  
  Remove \r from a file in-place