.. _rack_summary:

Rack Summary
============

The rack summary displays the most important specifications of the selected device. The summary depends
on the selected resource.


Switch
------

The summary of a switch (SWx) contains the following data:

* **Interface Status**: status of the switch (@todo which interface?)
* **Machine Model**: model ID of the switch
* **Part Number**: part number of the switch
* **Software Version**: installed version on the switch
* **System Name**: name of the switch as known in the |prod| software
* **MAC Address**: MAC address of the switch (@todo which mac address, the one connected to the
  Internet?)
* **Operating System**: installed OS on the switch
* **Serial Number**: the serial number of the switch
* **System Description**: short description of the switch, as defined on the |as| system.
* **System Up Time**: uptime of the switch

The full inventory of the switch can be found in the :ref:`inventory table <switch_inventory>`.


Controller and Storage Node
---------------------------

The summary of a Controller Node (CNx) or Storage Node (SNx)  displays the following information:

* **Bios**: name of the BIOS software
* **IP Address**: list of IP addresseses of the node
* **Motherboard**: name and type of the motherboard
* **Cpu**: model of CPU in the Controller
* **Memory**: type of RAM 
* **Network**: name and type of network interfaces

The full inventory of a Controller or Storage Node can be found in the :ref:`inventory table
<ctrl_sn_inventory>`.


Storage Enclosure
-----------------

The summary of a Storage Enclosure (SExx) contains this data:

* **FAN**: number of fans
* **PartNum**: identification of the storage enclosure
* **SASAddr**: address of the SAS controller
* **SerialNum**: serial number of the storage enclosure
* **Vendor**: name of the storage enclosure's vendor
* **IOM**: number of ... (@todo: what's the meaning of IOM?)
* **Product**: name of the storage enclosure hardware, for example Pikes Peak or Haleakala
* **SLED**: number of disk sleds in the enclosure
* **Type**: type of the sled (@todo: what's this?) 

The full inventory of a Storage Enclosure can be found in the :ref:`inventory table
<stor_enc_inventory>`.

