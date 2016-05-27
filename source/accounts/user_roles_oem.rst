.. ifconfig:: persona == 'oem'

   .. _user_roles:
   
   User Roles and Permissions
   ==========================
   
   Every user in |prod| has belongs to an account and has two specific parameters which define the level of
   view and action privileges.
   
   * :guilabel:`Persona`: The :term:`Persona` identifies the user type and defines the information that is
     available to this user. There are two types of "persona":
   
      * :guilabel:`Customer`: A user who is a "Customer" type has view access to the data of its own
        account.
      * :guilabel:`OEM`: A user who has the "OEM" persona, belongs typically to an |comp| partner. This 
        can a service provider or reseller, providing |prod| to its own customers. 
        This type of user has view access to the account data and to the data of the account's customers.
   
   * :guilabel:`Role`: The :term:`Role` defines the action privileges of the user. There are two roles in
     |prod|:
   
      * :guilabel:`User`: A user with the "User" role has only view rights on the data.
      * :guilabel:`Super User`: A user with the "Super User" role has the same rights as users with the
        "User" role, but has also access to the user management functionalities.
   
   
   Overview
   --------
   
   In the next table, bare in mind the following remarks:
   
   * SU = Super User role
   * Horizontally you find the possible "role+personae" combinations for a user
   * Vertically you find the actions on the "role+persona" combinations
   
   .. tabularcolumns:: |p{4cm}|p{2cm}|p{3cm}|p{2,5cm}|p{3cm}|
   .. cssclass:: longtable
   
   +---------------------------+--------+-------------+----------+---------------+
   | Action / Role-Persona     | SU+OEM | SU+Customer | User+OEM | User+Customer |
   +===========================+========+=============+==========+===============+
   | Create SU+OEM User        | x      |             |          |               |
   +---------------------------+--------+-------------+----------+---------------+
   | Create SU+Customer User   | x      | x           |          |               |
   +---------------------------+--------+-------------+----------+---------------+
   | Create User+OEM User      | x      |             |          |               |
   +---------------------------+--------+-------------+----------+---------------+
   | Create User+Customer User | x      | x           |          |               |
   +---------------------------+--------+-------------+----------+---------------+
   | View any user             | x      |             | x        |               |
   +---------------------------+--------+-------------+----------+---------------+
   | View Customer Users       | x      | x           | x        | x             |
   +---------------------------+--------+-------------+----------+---------------+
   | Delete OEM+Customer User  | x      |             |          |               |
   +---------------------------+--------+-------------+----------+---------------+
   | Delete Customer User      | x      | x           |          |               |
   +---------------------------+--------+-------------+----------+---------------+
