.. _cn_sn_logs:

Controller and Storage Node Logs
================================

The following log and configuration files are available on controller and storage nodes:

* :guilabel:`disk status`: displays the disk status of the selected Controller Node
* :guilabel:`config`: displays the configuration of the selected node, such as disks, network, general node 
  information, ...
* :guilabel:`event`: contains the events that occurred on the node
* :guilabel:`amplilog1`: log files with the system statistics reported by the |as| software
* :guilabel:`amplilog2`: logging of the customer facing S3 transactions, such as Read, Write, Delete, Add 
  Bucket, Delete Bucket). 
* :guilabel:`authentication`: logging of all access attempts to the node
* :guilabel:`ipmi`: data indicating the status of :term:`IPMI` controlled components such as fans, RAM modules, power
  supply, ...
* :guilabel:`kernel`: kernel log file of the node
* :guilabel:`lshw`: detailed hardware configuration of the node
* :guilabel:`switchX`: switch information such as connected ports and switch status
* :guilabel:`syslog`: contains the greatest deal of information by default about your node's operating system


Log File Content
----------------

* :guilabel:`ds`: date stamp
* :guilabel:`ts`: time stamp
* :guilabel:`server`: guid of the server which is selected in the rack image
* :guilabel:`daemon_id`: guid of the daemon who executed the action
* :guilabel:`stat_name`: name of the statistic, see amplilog1_
* :guilabel:`num_ops`: number of recorded operations in the statistics
* :guilabel:`variance`: variance of the operations in the statistics
* :guilabel:`avg_millis`: average duration of one operation
* :guilabel:`min_millis`: shortest duration of an operation
* :guilabel:`min_millis_size`: 
* :guilabel:`max_millis`: longest duration of an operation
* :guilabel:`max_millis_size`:


.. _amplilog1:

Amplilog1
---------

The |as| software logs contains the following data:

* :guilabel:`delete_duration`: duration of the delete operations
* :guilabel:`add_blocks_throughput`: throughput of 
* :guilabel:`sd_delete_blocks_duration`: 
* :guilabel:`put_duration`: duration of a write operation
* :guilabel:`add_obj_md_duration`
* :guilabel:`sd_get_full_copy_duration`
* :guilabel:`sd_add_obj_md_duration`
* :guilabel:`sd_get_blocks_throughput`
* :guilabel:`sd_get_blocks_duration`
* :guilabel:`s3_put_duration`: duration of an S3 write operation
* :guilabel:`spread_gen_normal_duration`
* :guilabel:`sd_add_blocks_duration`
* :guilabel:`add_full_copy_duration`
* :guilabel:`add_full_copy_throughput`
* :guilabel:`enc_sb_throughput`
* :guilabel:`rd_sb_duration`
* :guilabel:`sd_add_full_copy_duration`
* :guilabel:`s3_put_throughput`
* :guilabel:`sd_add_blocks_throughput`
* :guilabel:`sd_add_full_copy_throughput`
* :guilabel:`add_blocks_duration`
* :guilabel:`s3_auth_duration`
* :guilabel:`s3_md5_throughput`
* :guilabel:`enc_sb_duration`
* :guilabel:`rd_sb_throughput`
* :guilabel:`put_throughput`
* :guilabel:`sd_get_full_copy_throughput`
* :guilabel:`spread_gen_custom_duration`
* :guilabel:`sd_delete_full_copy_duration`
* :guilabel:`s3_md5_duration`


.. _amplilog2:

Amplilog2
---------


