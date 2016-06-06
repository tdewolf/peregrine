.. ifconfig:: persona == 'oem'

   .. _user_roles_oem:
   
   User Roles and Permissions
   ==========================
   
   Every user in |prod| is associated with an account and has two specific parameters which define the 
   level of view and action privileges.
   
   * :guilabel:`Persona`: The :term:`Persona` identifies the user type and defines the information that is
     available to this user. There are two types of "persona":
   
      * :guilabel:`OEM`: A user who has the "OEM" persona, belongs typically to an |comp| partner. This 
        can be a service provider or reseller, providing |prod| to its own customers. 
        This type of user has view access to the account system data and to the system data of all 
        his/her customers.
      * :guilabel:`Customer`: A user who is a "Customer" type has view access to the system data of its own
        account.
   
   * :guilabel:`Role`: The :term:`Role` defines the action privileges of the user. There are two roles in
     |prod|:
   
      * :guilabel:`User`: A user with the "User" role has only view rights on the system data.
      * :guilabel:`Super User`: A user with the "Super User" role has the same rights as users with the
        "User" role, but can also manage |prod| users.
   
