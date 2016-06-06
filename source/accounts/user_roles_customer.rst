.. ifconfig:: persona == 'customer'

   .. _user_roles:
   
   User Roles and Permissions
   ==========================
   
   Every user in |prod| is associated with an account and has two specific parameters which define the 
   level of view and action privileges.
   
   * :guilabel:`Persona`: The :term:`Persona` identifies the user type and defines the information that is
     available to this user. As "customer" persona, you have view access to your own account information
     and system data.
   
   * :guilabel:`Role`: The :term:`Role` defines the action privileges of the user. There are two roles in
     |prod|:
   
      * :guilabel:`User`: A user with the "User" role has only view rights on the data.
      * :guilabel:`Super User`: A user with the "Super User" role has the same rights as users with the
        "User" role, but can also manage |prod| users.
   
