.. _rack_inventory:

Rack Inventory
==============

The rack's :guilabel:`Inventory` table shows the detailed content of each resource. The displayed
information depneds on the selected resource.

You can sort the table per column in ascending or descending order by clicking the header of a specific
column.


.. _switch_inventory:

Switch Inventory
----------------

The switch inventory table contains the details of all the components in the used switch.

* **Port**: number of the switch port
* **Name**: name of the switch port
* **Flow Control Status**: status of the port
* **Link State**: status of the port link, up or down
* **Physical Mode**: physical configuration of the port, type of port (Automatic, 10G Full, ...)
* **Media Type**: connected media type
* **Physical Status**: status of the physical port

@todo: what's the meaning of the last 5 switch properties?


.. _ctrl_sn_inventory:

Controller and Storage Node Inventory
-------------------------------------

The inventory table of a Controller or Storage Node are identical. The table contains the following data:

* **Component**: type of the resource component (CPU, BIOS, network, memory, disk, ...)
* **Vendor**: name of the component's vendor
* **Model**: model of the component
* **Serial**: serial number of the component
* **Description**: short description of the component
* **Firmware**: version of the used firmware in the component
* **Slot**: location of the component, for example disk slot or memory slot



.. _stor_enc_inventory:

Storage Enclosure Inventory
---------------------------

The storage enclosure inventory displays the number of disks, fans, I/O modules and power modules.

Hover over a fan, I/O module or power module to obtain their details.

Click :guilabel:`Show All Drives` to display the disks table.

* **Component**: the type of component in the storage enclosure
* **Vendor**: name of the disk vendor
* **Model**: model identification of the disk
* **Serial**: serial number of the disk, this can be used for verfication in case of a disk replacement
* **Description**: description of the disk
* **Firmware**: firmware version on the disk
* **Slot**: the ID of the slot in the storage enclosure where the disk is located

