.. _glossary:

Glossary
========

.. glossary::

   Controller Node
      See Scaler Node.

   Dashboard
      The Dashboard shows all data racks in all data centers and is the default view when you log in.

   Data Safety
      The Data Safety is a policy used to store the objects in |prod|. An object is split into several
      segments, each segment is stored on a separate disk. A policy is noted in a X/Y format.
      The policy defines in how many segments the object is divided (X) and how many segments may be 
      unavailable to restore the whole object (Y). 
      |prod| supports two data safeties: 15/5 and 18/8. 

.. ifconfig:: persona != 'customer'

   Erasure Coding
      Erasure coding is a way to split an object into chunks and each chunk is stored on a separate disk.
      The erasure code is able to rebuilt every chunk from other chunks if a chunk is missing. 

.. ifconfig:: persona in ('customer', 'oem', 'admin')

   IPMI
      Intelligent Platform Management Interface. It is an interface to monitor the health of remote
      hardware such as temperature, fans, power supplies... The interface also allows you to manage the
      remote hardware, even if the node is turned off.

   JSON
      JSON (JavaScript Object Notation) is a lightweight data-interchange format which is human readable
      and easy to generate.

.. ifconfig:: persona != 'customer'

   Persona
      The persona identifies the type of the user and defines the information that is available to this
      user. There are three types of persona: admin, customer, and OEM. 

.. ifconfig:: persona in ('customer', 'oem', 'admin')

   Role
      The role of a user defines the user rights. As "User", you can only consult information, as "Super
      User" you can create other users.

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
