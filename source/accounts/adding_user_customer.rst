.. ifconfig:: persona == 'customer'

   .. |save_user| image:: ../_static/save_user.png
   
   .. _adding_user:
   
   Adding a User
   =============
   
   .. note::
   
      You can only add users if you have the role of "Super User". 
   
   To add a user:
   
   #. Click on your user name in the top-right corner and select :guilabel:`User Management`.
   
      The :guilabel:`User Management` window appears.
   #. On top of the table, click :guilabel:`Add User`.
   
      A new row appears in the table.
   #. Fill out the row with the proper values:
   
      * :guilabel:`Username`: user name to access |prod|
      * :guilabel:`Persona`: this value is automatically filled out with 'Customer'. See 
        :ref:`User Roles <user_roles>` for more information.
      * :guilabel:`Account`: the name of the account to which the user belongs. 
      * :guilabel:`Role`: the role of the user (User, Super User). See :ref:`User Roles
        <user_roles>` for more information.
      * :guilabel:`Email`: e-mail address of the user for all communication.
   
   #. Click the Save button (|save_user|) in the :guilabel:`Actions` column.
   
   The user receives an email with the login and a temporary password.
   
