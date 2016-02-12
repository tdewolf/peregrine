.. _glossary:

Glossary
========

.. glossary::

   Dashboard
      The Dashboard shows all data racks in all data centers and is the default view when you log in.

   Enclosure
      @todo fill out definition

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
