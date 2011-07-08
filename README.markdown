OpenMRS Mapping:
================

Introduction
------------
OpenMRS Mapping is an application that that does cross-database mapping for varied OpenMRS data models using a simple web interface.

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
    https://github.com/ceekays/OpenMRS-Mapping.

Contact the Developers
----------------------
    kachaleedmond(at)gmail.com (http://edceekays.blogspot.com/)
    developers(at)baobabhealth(dot)org (http://baobabhealth.org/)


