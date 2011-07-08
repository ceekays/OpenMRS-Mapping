Drug Mapper: maps bart 1 and bart 2 drugs using a simple web interface
======================================================================

Introduction
------------
Drug Mapper is an application that maps bart 1 and bart 2 drugs using a simple web interface.

Getting Started
---------------
In order to setup the app, do the following:
* Create a database:
      mysqladmin -u root -p create drug_map_development;

* Configure your database.yaml (see example in config directory)

* Run
      script/load_defaults ENVIRONMENT, 
where ENVIRONMENT is any of your preferred environments as defined in database.yaml (namely development, test and production)

* Run:
      rake db:migrate

* Run 
      script/server

The application is ready for use (on http://localhost:3000/ by default).

Source code
-----------
The latest code can be found at:
    https://github.com/BaobabHealthTrust/mnch-hotline.

Contact the Developers
----------------------

    developers(at)baobabhealth(dot)org (http://baobabhealth.org/)

