.. _ops_reports:

Operational Reports
===================

.. ifconfig:: persona != 'customer'

   Operational reports provide you clear overviews about the usage of a system. This includes the 
   requests per bucket, requests per file, file sizes and :term:`erasure coding <Erasure Coding>` 
   overhead.
   
.. ifconfig:: persona == 'customer'

   Operational reports provide you clear overviews about the usage of a system. This includes the 
   requests per bucket, requests per file and file sizes.
   
For each of the reports, you can specify a :ref:`period <filtering_data>` for which you want the data.

.. toctree::

   top_buckets.rst
   erasure_coding_overhead.rst
   top_files.rst
   file_size.rst
   custom_reports.rst

