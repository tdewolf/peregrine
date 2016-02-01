.. _glossary:

Glossary
========

.. glossary::

   Dashboard
      The Dashboard shows all data racks in all data centers and is the default view when you log in.

   Erasure Coding
      Erasure coding is a way to split an object into chunks and each chunk is stored on a separate disk.
      The erasure code is able to rebuilt every chunk from other chunks. For example, a 5+1 scheme means
      that your object is divided into 5 segments and 1 parity segment and stored on 6 different disks.
      If 1 disk becomes corrupt, the erasure code is still able to reproduce your object.
