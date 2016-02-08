.. _log_analytics:

Log Details
===========

When you want to consult the log files of a node, click on the node in the rack in the :guilabel:`Log
Details` section. If you haven't selected a dot in the :ref:`timeline <log_timeline>`, the displayed log
files will be the most recent.

There are various log files, depending on the device type:

* :ref:`Controller Node <log_cn>`
* :ref:`Storage Node <log_sn>`
* :ref:`Storage Enclosure <log_stor_enc>`
* :ref:`Switch <log_switch>`

.. _log_cn:

Controller Node
---------------

The following log files are available:

* **disk status**: the information of all disks in every node
* **config**: configuration of the selected node, disks, network, general node information, ...
* **authentication**: logging of all access attempts to the node
* **drive_serial_mapping**: @todo what's this
* **ipmi**: data indicating the status of :term:`IPMI` controlled components such as fans, RAM modules, power
  supply, ...
* **kernel**: kernel log file of the node
* **lshw**: detailed hardware configuration of the node
* **lcpci**: output of the lspci command, listing all PCI devices
* **scsi**: @todo what info in this log?
* **switchX**: switch information such as connected ports and switch status
* **syslog**: contains the greatest deal of information by default about your node's operating system


.. _log_sn:

Storage Node
------------

A storage node contains the same log information as a controller node, except for
**drive_serial_mapping**, **lspci**, and **scsi**.


.. _log_stor_enc:

Storage Enclosure
-----------------

* **drive_serial_mapping**:
* **encl_err**: all errors in an enclosure
* **enclosure**: details of all disks in an enclosure, containing serial number, temperature, status, ...
* **lspci**: see Controller Node
* **scsi**: see Controller Node

.. _log_switch:

Switch
------

Not available.
