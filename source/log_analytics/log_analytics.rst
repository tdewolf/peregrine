.. _log_analytics:

Log Analytics
=============

The log analytics give you access to the log files of the nodes in a rack. In case of errors or
unexpected behavior you can consult the log files.

The following log files are available:

* **disk status**: the information of all disks in every node
* **config**: configuration of the selected node, disks, network, general node information, ...
* **authentication**: logging of all access attempts to the node
* **ipmi**: data indicating the status of IPMI controlled components such as fans, RAM modules, power
  supply, ...
* **kernel**: kernel log file of the node
* **lshw**: detailed hardware configuration of the node
* **switchX**: switch information such as connected ports and switch status
* **syslog**: contains the greatest deal of information by default about your node's operating system

Every information can be downloaded in JSON format via the :guilabel:`Download` link.

