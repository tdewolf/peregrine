.. ifconfig:: persona == 'admin'

   .. _user_roles:
   
   User Roles and Permissions
   ==========================
   
   Every user in |prod| has belongs to an account and has two specific parameters which define the level of
   view and action privileges.
   
   * :guilabel:`Persona`: The :term:`Persona` identifies the user type and defines the information that is
     available to this user. There are three types of "persona":
   
      * :guilabel:`Admin`: A user who is an "Admin" type, has view access to the data of all customers.
        These users are typically |comp| Support Engineers.
      * :guilabel:`Customer`: A user who is a "Customer" type has view access to the data of its own
        account.
      * :guilabel:`OEM`: A user who is of an "OEM" type belongs to a special type of customer. This customer
        is typically a service provider or reseller, providing |prod| to its own customers. 
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
   * Horizontally you find the possible persona/role combinations for a user
   * Vertically you find the actions on the persona/role combinations
   * View permissions of OEM persona is limited to its own account and the customers of its sales channel
   
   .. tabularcolumns:: |p{2cm}|p{2cm}|p{2cm}|p{2,5cm}|p{2cm}|p{2cm}|p{2,5cm}|
   .. cssclass:: longtable
   
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
   | Action / Role-Persona     | SU+Admin | SU+OEM | SU+Customer | User+Admin | User+OEM | User+Customer |
   +===========================+==========+========+=============+============+==========+===============+
   | Create SU+Admin User      | x        |        |             |            |          |               |
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
   | Create SU+OEM User        | x        | x      |             |            |          |               |
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
   | Create SU+Customer User   | x        | x      | x           |            |          |               |
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
   | Create User+Admin User    | x        | x      |             |            |          |               |
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
   | Create User+OEM User      | x        | x      |             |            |          |               |
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
   | Create User+Customer User | x        | x      | x           |            |          |               |
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
   | View any user             | x        |        |             | x          |          |               |
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
   | View OEM+Customer Users   | x        | x      |             | x          | x        |               |
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
   | View Customer Users       | x        | x      | x           | x          | x        | x             |
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
   | Delete any user           | x        |        |             |            |          |               |
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
   | Delete OEM+Customer User  | x        | x      |             |            |          |               |
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
   | Delete Customer User      | x        | x      | x           |            |          |               |
   +---------------------------+----------+--------+-------------+------------+----------+---------------+
