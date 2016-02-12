.. _glossary:

Glossary
========

.. glossary::

   Controller Node
      See Scaler Node.

   Dashboard
      The Dashboard shows all data racks in all data centers and is the default view when you log in.

   Erasure Coding
      Erasure coding is a way to split an object into chunks and each chunk is stored on a separate disk.
      The erasure code is able to rebuilt every chunk from other chunks if a chunk is missing. 

      For example, an 18+7 scheme means that your object is divided into 18 segments and and stored on 18
      separate disks. The erasure code can rebuild the object with a maximum of 7 unavailable disks.

   IPMI
      Intelligent Platform Management Interface. It is an interface to monitor the health of remote
      hardware such as temperature, fans, power supplies... The interface also allows you to manage the
      remote hardware, even if the node is turned off.

   JSON
      JSON (JavaScript Object Notation) is a lightweight data-interchange format which is human readable
      and easy to generate.

   Scaler Node
      A Scaler Node is the node in a system which processes all storage client requests. It has also
      the logic of authentication and authorization. The Scaler Node has all information of the bucket
      and objects in the system.

      It is sometimes referred to as Controller Node.

   Storage Enclosure
      The storage enclosure is the hardware component which holds the disks to store the data. The
      enclosure does not have any logic on board, it stores the data sent by a storage node.

   Storage Node
      A storage node is the node which receives objects from the :term:`Scaler Node`. It is responsible
      for the erasure coding
