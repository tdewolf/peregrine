.. _log_viewer:

Log Viewer
==========

The :guilabel:`Log Viewer` gives you access to the log and configuration files of all nodes of the 
selected system. In case of errors or unexpected behavior, you can consult these logs and configurations 
to identify the cause of the malfunctioning.

Instead of consulting the log and configuration files in |prod|, you can download them in :term:`JSON` 
format via the :guilabel:`Download` link.


Selecting a Log or Configuration File
-------------------------------------

In the :guilabel:`Log Timeline` panel, you can choose the day for which you want to consult the log
files. Click a dot on the time line to select a day.

When you have selected the day on the timeline, click on the node in the rack, whose log details you want
to consult. If you haven't selected a dot in the :guilabel:`Log Timeline`, the displayed log
files will be the most recent.

There are various log files, depending on the device type:

* :ref:`Controller and Storage Node <log_cn>`
* :ref:`Storage Enclosure <log_stor_enc>`
* :ref:`Switch <log_switch>`

.. note::

   You see only the log files that are actually available on the node.

.. _log_cn:

Controller and Storage Node
---------------------------

The following log and configuration files are available on controller and storage nodes:

* **disk status**: displays the disk status of the selected Controller Node
* **config**: displays the configuration of the selected node, such as disks, network, general node 
  information, ...
* **event**: contains the events that occurred on the node
* **log1**: @todo what's this and what's difference with log2?
* **log2**: @todo see log1
* **authentication**: logging of all access attempts to the node
* **ipmi**: data indicating the status of :term:`IPMI` controlled components such as fans, RAM modules, power
  supply, ...
* **kernel**: kernel log file of the node
* **lshw**: detailed hardware configuration of the node
* **switchX**: switch information such as connected ports and switch status
* **syslog**: contains the greatest deal of information by default about your node's operating system


.. _log_stor_enc:

Storage Enclosure
-----------------

The following log and configuration files are available on a storage enclosure:

* **drive_serial_mapping**: displays the configuration of the disks in the enclosure
* **encl_err**: all errors in an enclosure
* **enclosure**: details of all disks in an enclosure, containing serial number, temperature, status, ...
* **lspci**: displays the logging of the ``lspci`` command
* **scsi**: displays the SCSI logging of the enclosure

.. _log_switch:

Switch
------

On a switch, you can find the switch system configuration.

