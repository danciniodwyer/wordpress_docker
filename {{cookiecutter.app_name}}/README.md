# {{cookiecutter.app_name}}

This repo contains a dockerised instance of Wordpress backed by a MySQL database instance.
phpMyAdmin is also included.

The repo also contains the following helper scripts.

* backup.sh: Archive the contents of the Wordpress and MySQL instances from the docker volumes.
* restore.sh: Restore the contents of the docker volumes from a previously taken backup.
* run.sh: Bring up Wordpress and phpMyAdmin.

Wordpress will be reachable on port {{cookiecutter.wordpress_port}}.
phpMyAdmin will be reachable on port {{cookiecutter.phpmyadmin_port}}.
