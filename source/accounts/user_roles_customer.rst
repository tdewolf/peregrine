.. ifconfig:: persona == 'customer'

   .. _user_roles:
   
   User Roles and Permissions
   ==========================
   
   Every user in |prod| has belongs to an account and has two specific parameters which define the level of
   view and action privileges.
   
   * :guilabel:`Persona`: The :term:`Persona` identifies the user type and defines the information that is
     available to this user. As "customer" persona, you have view access to your own account information.
   
   * :guilabel:`Role`: The :term:`Role` defines the action privileges of the user. There are two roles in
     |prod|:
   
      * :guilabel:`User`: A user with the "User" role has only view rights on the data.
      * :guilabel:`Super User`: A user with the "Super User" role has the same rights as users with the
        "User" role, but has also access to the user management functionalities.
   
   
   Overview
   --------
   
   In the next table, bare in mind the following remarks:
   
   * SU = Super User role
   * Horizontally you find the possible "role+persona" combinations for a user
   * Vertically you find the actions on the "role+persona" combinations
   
   .. tabularcolumns:: |p{4cm}|p{3cm}|p{3cm}|
   .. cssclass:: longtable
   
   +---------------------------+-------------+---------------+
   | Action / Role-Persona     | SU+Customer | User+Customer |
   +===========================+=============+===============+
   | Create SU+Customer User   | x           |               |
   +---------------------------+-------------+---------------+
   | Create User+Customer User | x           |               |
   +---------------------------+-------------+---------------+
   | View any user             | x           | x             |
   +---------------------------+-------------+---------------+
   | Delete any user           | x           |               |
   +---------------------------+-------------+---------------+
