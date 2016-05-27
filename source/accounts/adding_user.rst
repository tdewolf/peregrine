.. |save_user| image:: ../_static/save_user.png

.. _adding_user:

Adding a User
=============

.. note::

   You can only add users if you have the role of "Super User". 
   The options in the user properties vary according the "Persona", for example an OEM persona is not
   able to add a user with an Admin persona.

To add a user:

#. Click on your user name in the top-right corner and select :guilabel:`User Management`.

   The :guilabel:`User Management` window appears.
#. On top of the table, click :guilabel:`Add User`.

   A new row appears in the table.
.. ifconfig:: persona == 'admin'

   #. Fill out the row with the proper values:
   
      * **Username**: user name to access |prod|
      * **Persona**: this value defines the information that the user will see in the UI (Admin, Customer, 
        OEM). See :ref:`User Roles <user_roles>` for more information.
      * **Account**: the name of the account to which the user belongs. 
      * **Role**: the :ref:`role <user_roles>` of the user (User, Super User). See :ref:`User Roles
        <user_roles>` for more information.
      * **Email**: e-mail address of the user for all communication.

.. ifconfig:: persona == 'oem'

   #. Fill out the row with the proper values:
   
      * **Username**: user name to access |prod|
      * **Persona**: this value defines the information that the user will see in the UI (Customer, 
        OEM). See :ref:`User Roles <user_roles>` for more information.
      * **Account**: the name of the account to which the user belongs. 
      * **Role**: the :ref:`role <user_roles>` of the user (User, Super User). See :ref:`User Roles
        <user_roles>` for more information.
      * **Email**: e-mail address of the user for all communication.

.. ifconfig:: persona == 'customer'

   #. Fill out the row with the proper values:
   
      * **Username**: user name to access |prod|
      * **Persona**: this value is automatically filled out with 'Customer'
        OEM). See :ref:`User Roles <user_roles>` for more information.
      * **Account**: the name of the account to which the user belongs. 
      * **Role**: the :ref:`role <user_roles>` of the user (User, Super User). See :ref:`User Roles
        <user_roles>` for more information.
      * **Email**: e-mail address of the user for all communication.

#. Click the Save button (|save_user|) in the :guilabel:`Actions` column.

The user receives an email with the login and a temporary password.

