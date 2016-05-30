.. ifconfig:: persona == 'admin'

   .. _user_roles_admin:
   
   User Roles and Permissions
   ==========================
   
   Every user in |prod| has belongs is associated with an account and has two specific parameters which 
   define the level of view and action privileges.
   
   * :guilabel:`Persona`: The :term:`Persona` identifies the user type and defines the information that is
     available to this user. There are three types of "persona":
   
      * :guilabel:`Admin`: A user who is an "Admin" type, has view access to the data of all customers.
        These users are typically |comp| personnel.
      * :guilabel:`Customer`: A user who is a "Customer" type has view access to the data of its own
        account.
      * :guilabel:`OEM`: A user who is of an "OEM" type belongs to a special type of customer. This customer
        is typically a service provider or reseller, providing |prod| to its own customers. 
        This type of user has view access to the account data and to the data of all his/her customers.
   
   * :guilabel:`Role`: The :term:`Role` defines the action privileges of the user. There are two roles in
     |prod|:
   
      * :guilabel:`User`: A user with the "User" role has only view rights on the data.
      * :guilabel:`Super User`: A user with the "Super User" role has the same rights as users with the
        "User" role, but can also manage |prod| users.

