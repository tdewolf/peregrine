.. |search| image:: ../_static/search.png

.. |full_screen| image:: ../_static/full_screen.png

.. |peregrine_avatar| image:: ../_static/peregrine_avatar.png

.. |csh_help| image:: ../_static/csh_help.png

.. |download_graph| image:: ../_static/download_graph.png

.. _ui_components:

UI Components
=============

The |prod| interface is divided in two main sections:

* a :ref:`top bar <top_bar>`
* the :ref:`main page <main_page>`  with various panels, which vary per page.


.. _top_bar:

Top Bar
-------

In the top bar you find the following components:

.. ifconfig:: persona == 'customer'

   * |search|: icon to open the search window
   * link to :ref:`Operational Reports <ops_reports>`
   * |full_screen|: icon to open |prod| in full screen mode
   * |peregrine_avatar|: icon to open user and account specific actions 

.. ifconfig:: persona != 'customer'

   * |full_screen|: icon to open |prod| in full screen mode
   * |peregrine_avatar|: icon to open the user and account specific actions

   The following items are not available on the :ref:`Install Base Dashboard <install_base_dashboard>`,
   you first have to select a customer to make them visible:

   * |search|: icon to open the search window
   * link to :ref:`Operational Reports <ops_reports>`
   

.. _main_page:

Main Page
---------

The main page displays the selected information. The page consists of multiple panels which contain the
information in table or graphical format. For more information about the panel, hover over the panel's
help icon (|csh_help|).

Some information can be dowloaded via the panel:

* **graphical data**: Click the download icon in the panel (|download_graph|) to download the graphic.
  You can download the information in various formats (PNG, JPEG, PDF, SVG) or to a printer.
* **tables**: Click the :guilabel:`Export to CSV` link in the panel to download the data in CSV format.

