.. _cn_sn_logs:

Controller and Storage Node Logs
================================

The following log and configuration files are available on controller and storage nodes:

* :guilabel:`disk status`: displays the disk status of the selected Controller Node
* :guilabel:`config`: displays the configuration of the selected node, such as disks, network, general node 
  information, ...
* :guilabel:`event`: contains the events that occurred on the node
* :guilabel:`amplilog1`: log files with the system statistics reported by the |as| software
* :guilabel:`amplilog2`: logging of the S3 transactions, Read, Write, Delete, Add Bucket, 
  Delete Bucket. 
* :guilabel:`authentication`: logging of all access attempts to the node
* :guilabel:`ipmi`: data indicating the status of :term:`IPMI` controlled components such as fans, RAM 
  modules, power supply, ...
* :guilabel:`kernel`: kernel log file of the node
* :guilabel:`lshw`: detailed hardware configuration of the node
* :guilabel:`switchX`: switch information such as connected ports and switch status
* :guilabel:`syslog`: a source of detailed information about the behavior of your node's operating 
  system

The log statistics are logged every five minutes by default, which means that all values in the
statistics are calculated for this statistics interval.

Each statistic corresponds with a certain value wich is calculated from a certain action. For example, a 
value can be the time that a certain call or action takes.


Log File Content Amplilog1
--------------------------

The content of 'amplilog1' is a comma-separated file:

* :guilabel:`ds`: date stamp
* :guilabel:`ts`: time stamp
* :guilabel:`server`: guid of the server which is selected in the rack image
* :guilabel:`daemon_id`: guid of the daemon who executed the action
* :guilabel:`stat_name`: name of the statistic, see `amplilog1`_
* :guilabel:`num_ops`: number of recorded operations in the statistic interval
* :guilabel:`variance`: the population variance of all the values for the action
* :guilabel:`avg_millis`: average duration of one operation, measured during the statistic interval
* :guilabel:`min_millis`: shortest duration of an operation in the interval
* :guilabel:`min_millis_size`: minimum size of an object in the statistic, expressed in MiB
* :guilabel:`max_millis`: longest duration of an operation in the interval
* :guilabel:`max_millis_size`: maximum size of an object in the statistic, expressed in MiB


Log File Content Amplilog2
--------------------------

The content of 'amplilog2' is a comma-separated file:

* :guilabel:`ds`: date stamp
* :guilabel:`ts`: time stamp
* :guilabel:`server`: guid of the server which is selected in the rack
* :guilabel:`daemon_id`: guid of the daemon who executed the action
* :guilabel:`key`: key to identify the object in the database
* :guilabel:`namespace`: name of the S3 bucket in which the related action is executed
* :guilabel:`action`: name of the action (put, delete, get, ...)
* :guilabel:`size`: size of the object used in the action, expressed in MiB
* :guilabel:`time`: duration of the action
* :guilabel:`throughput`: the throughput for the object's size, expressed in MiB/s
* :guilabel:`actual_size`: used capacity on disk by the object (object size + erasure coding overhead),
  expressed in MiB
* :guilabel:`actual_rate`: the throughput for the object's "actual_size", expressed in MiB/s
* :guilabel:`object`: name of the object affected by this action

.. _amplilog1:

Amplilog1
---------

The |as| software logs contains the following data:

.. tabularcolumns:: |p{6cm}|p{5cm}|p{2,5cm}|
.. cssclass:: longtable

+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| Statistic name                          | Description                                                | Size                              |
+=========================================+============================================================+===================================+
| add_blocks_duration                     | Duration (in seconds) and throughput (in MiB/s) of the     | Size (in MiB) of the blocks       |
|                                         | blockstore add_blocks call, which sends the blocks to      |                                   |
| add_blocks_throughput                   | a blockstore where they are written to disk.               |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| other_location_add_blocks_duration      | Same as the previous statistic, but only for add_blocks    | Size (in MiB) of the blocks       |
|                                         | calls to a different location. Typically a different       |                                   |
| other_location_add_blocks_throughput    | datacenter in a 3-GEO setup.                               |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| add_full_copy_duration                  | Duration and throughput of the blockstore add_superblock   | Size of the superblock.           |
|                                         | call, which sends an entire superblock to a blockstore     |                                   |
| add_full_copy_throughput                | where it is written to disk. Used for full-copy policies.  |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| other_location_add_full_copy_duration   | Same as the previous, but to a different location.         | Size of the superblock.           |
| other_location_add_full_copy_throughput |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| get_blocks_duration                     | Duration and throughput of the blockstore get_blocks       | Retrieved size of the blocks.     |
|                                         | call, which requests the blocks from the blockstore.       |                                   |
| get_blocks_throughput                   | This blockstore reads the blocks from disk and sends       |                                   |
|                                         | it back.                                                   |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| other_location_get_blocks_duration      | Same as the previous, but from a different location.       | Retrieved size of the blocks.     |
| other_location_get_blocks_throughput    |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| get_full_copy_duration                  | Duration and throughput of the blockstore get_superblock   | Retrieved size of the superblock. |
| get_full_copy_throughput                | call, which requests the superblock from a blockstore.     |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| other_location_get_full_copy_duration   | Same as the previous, but from a different location.       | Retrieved size of the superblock. |
| other_location_get_full_copy_throughput |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| get_sb_duration                         | Total duration and throughput for the retrieval of a       | Retrieved size of the superblock. |
|                                         | superblock. This includes amongst others erasure decoding  |                                   |
| get_sb_throughput                       | and fetching the data from the blockstores.                |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| dec_sb_duration                         | Duration and throughput of the erasure decoding of a       | Size of the superblock.           |
|                                         | superblock.                                                |                                   |
| dec_sb_throughput                       |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| enc_sb_duration                         | Duration and throughput of the erasure encoding of a       | Size of the superblock.           |
|                                         | superblock.                                                |                                   |
| enc_sb_throughput                       |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| wr_sb_duration                          | Duration and throughput of writing a single superblock of  | Size of the superblock.           |
|                                         | incoming data to the client during a read request.         |                                   |
| wr_sb_throughput                        |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| rd_sb_duration                          | Duration and throughput of reading a single superblock of  | Size of the superblock.           |
|                                         | incoming data from the client during a PUT request.        |                                   |
| rd_sb_throughput                        |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| add_obj_md_duration                     | Duration of the add_object_metadata blockstore call,       | None                              |
|                                         | which send object metadata to a blockstore where it is     |                                   |
|                                         | written to disk.                                           |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| ck_blocks_duration                      | Duration and throughput of the blockstore ck_blocks        | Size of the blocks.               |
|                                         | call, where the blockstore reads in a checkblock file      |                                   |
| ck_blocks_throughput                    | from disk and verifies that its content is still ok.       |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| ck_full_copy_duration                   | Duration and throughput of the blockstore ck_superblock    | Size of the superblock.           |
|                                         | call, where the blockstore reads in a superblock from      |                                   |
| ck_full_copy_throughput                 | disk and verifies that its content is still ok.            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| delete_blocks_duration                  | Duration of the blockstore delete_blocks or                | Total deleted size.               |
|                                         | delete_superblock call, which requests the blockstore to   |                                   |
| delete_full_copy_duration               | delete the blocks or a superblock.                         |                                   |
|                                         | Both statistics contain the same values. They also         |                                   |
|                                         | contain entries for OFFLINE, DECOMMISSIONED and ABANDONED  |                                   |
|                                         | blockstores, where deletes are never send to.              |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| spread_gen_normal                       | Duration of generating of a completely new spread.         | None                              |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| spread_gen_custom                       | Duration of generating a spread starting from an           | None                              |
|                                         | existing spread.                                           |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| sd_add_blocks_duration                  | Duration and throughput of the blockstore add_blocks       | Size of the blocks.               |
| sd_add_blocks_throughput                | call, locally within a storage daemon/blockstore.          |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| sd_get_blocks_duration                  | Duration and throughput of the blockstore get_blocks       | Retrieved size of the blocks.     |
| sd_get_blocks_throughput                | call, locally within a storage daemon.                     |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| sd_ck_blocks_duration                   | Duration and throughput of the blockstore ck_blocks call,  | Size of the blocks.               |
| sd_ck_blocks_throughput                 | locally within a storage daemon.                           |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| sd_delete_blocks_duration               | Duration of the blockstore delete_blocks call, locally     | None                              |
|                                         | within a storage daemon.                                   |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| sd_add_full_copy_duration               | Duration and throughput of the blockstore add_full_copy    | Size of the superblock.           |
| sd_add_full_copy_throughput             | call, locally within a storage daemon.                     |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| sd_get_full_copy_duration               | Duration and throughput of the blockstore get_full_copy    | Retrieved size of the superblock. |
| sd_get_full_copy_throughput             | call, locally within a storage daemon.                     |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| sd_ck_full_copy_duration                | Duration and throughput of the blockstore ck_full_copy     | Size of the superblock.           |
| sd_ck_full_copy_throughput              | call, locally within a storage daemon.                     |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| sd_delete_full_copy_duration            | Duration of the blockstore delete_full_copy call,          | None                              |
|                                         | locally within a storage daemon.                           |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| sd_add_obj_md_duration                  | Duration of the blockstore delete_full_copy call,          | None                              |
|                                         | locally within a storage daemon.                           |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| put_duration                            | Duration and throughput of an entire object write call.    | Size of the object.               |
|                                         |                                                            |                                   |
| put_throughput                          |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| get_duration                            | Duration and throughput of an entire object GET call.      | Retrieved size of the object.     |
|                                         |                                                            |                                   |
| get_throughput                          |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| failed_get_duration                     | Duration and throughput of a failed object GET call.       | Total size of the object's        |
|                                         |                                                            | data for which superblock         |
| failed_get_throughput                   |                                                            | retrieval was started.            |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| delete_duration                         | Duration of an entire object DELETE call, which is a       | None                              |
|                                         | metadata-only operation.                                   |                                   |
|                                         | This only measures the codepath shared between AXR and S3. |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| repair_NORMAL_duration                  | Duration of the execution of a NORMAL repair task by the   | None                              |
|                                         | repair daemon.                                             |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| repair_DECOMMISSION_duration            | Duration of the execution of a DECOMMISSION repair task    | None                              |
|                                         | by the repair daemon.                                      |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| repair_REBALANCE_duration               | Duration of the execution of a REBALANCE repair task by    | None                              |
|                                         | the repair daemon.                                         |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| repair_CLEAN_duration                   | Duration of the execution of a CLEAN repair task by the    | None                              |
|                                         | repair daemon.                                             |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| repair_VERIFY_duration                  | Duration of the execution of a VERIFY repair task by the   | None                              |
|                                         | repair daemon.                                             |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| delete_task_duration                    | Duration of the execution of a DELETE task by the          | None                              |
|                                         | repair daemon.                                             |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| forced_delete_task_duration             | Duration of the execution of a FORCED_DELETE task by the   | None                              |
|                                         | repair daemon.                                             |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| s3_get_duration                         | Duration and throuhput of an entire S3 object read call.   | Retrieved size of the object.     |
|                                         | This does not include the HTTP-related things.             |                                   |
| s3_get_throughput                       |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| s3_put_duration                         | Duration and throuhput of an entire S3 object write call.  | Size of the object.               |
|                                         | This does not include the HTTP-related things.             |                                   |
| s3_put_throughput                       |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| s3_auth_duration                        | Duration of the authentication of an S3 request.           | None                              |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| s3_md5_duration                         | Duration and throughput of the MD5 calculation during a    | Size of the superblock.           |
|                                         | an S3 object write request. This calculation happens for   |                                   |
| s3_md5_throughput                       | every superblock.                                          |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| encrypt_duration                        | Duration and throughput of the encryption of a superblock  | Size of the superblock.           |
|                                         | during an object PUT call.                                 |                                   |
| encrypt_throughput                      |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
| decrypt_duration                        | Duration and throughput if the decryption of a superblock  | Size of the superblock.           |
|                                         | during an object GET call.                                 |                                   |
| decrypt_throughput                      |                                                            |                                   |
+-----------------------------------------+------------------------------------------------------------+-----------------------------------+
