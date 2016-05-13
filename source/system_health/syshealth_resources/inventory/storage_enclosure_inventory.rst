.. |se_inventory| image:: ../../../_static/se_inventory.png

.. |se_fan_property| image:: ../../../_static/se_fan_property.png

.. |se_io_property| image:: ../../../_static/se_io_property.png

.. |drive_replace| image:: ../../../_static/drive_replace.png

.. _storage_enclosure_inventory:

Storage Enclosure Inventory
===========================

The storage enclosure inventory displays the number of disks, fans, I/O modules and power modules.

|se_inventory|

Hover over a fan, I/O module or power module to obtain their details.

|se_fan_property| |se_io_property|

In the sleds overview, the drives that need replacement are flagged. The flagging of disks is based on
|prod| statistical analysis.

|drive_replace|


Drive Details
-------------

Click :guilabel:`Show All Drives` to display the disks table.

* **Slot**: the ID of the slot in the storage enclosure where the disk is located
* **% Used**: percentage of the used disk capacity
* **Type**: type of the disk
* **Logical Device**: name of the logical device on the disk
* **Size**: size of the logical device
* **Vendor**: name of the disk vendor
* **Product**: model identification of the disk
* **Serial**: serial number of the disk, this can be used for verfication in case of a disk replacement
* **Firmware**: firmware version on the disk
* **Description**: description of the disk

