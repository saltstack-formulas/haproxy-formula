=======
haproxy
=======

Install, configure and run ``haproxy``.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

Use the supplied haproxy.cfg for a flat file approach,
or the jinja template and the pillar for a salt approach.

``haproxy``
-----------

Install, configure and run ``haproxy`` service.

``haproxy.install``
-------------------

Install ``haproxy`` from packages.

``haproxy.config``
------------------

Currently, only a handful of options can be set using the pillar:

- Global

  + stats: enable stats, curently only via a unix socket which can be set to a path
  + user: sets the user haproxy shall run as
  + group: sets the group haproxy shall run as
  + chroot: allows you to turn on chroot and set a directory
  + daemon: allows you to turn daemon mode on and off

- Default

  + log: set the default log
  + mode: sets the mode (i.e. http)
  + retries: sets the number of retries
  + options: an array of options that is simply looped with no special treatment
  + timeouts: an array of timeouts that is simply looped with no special treatment
  + errorfiles: an array of k:v errorfiles to point to the correct file matching an HTTP error code

- Frontend; Frontend(s) is a list of the frontends you desire to have in your haproxy setup
  Per frontend you can set:

  + name: the name haproxy will use for the frontend
  + bind: the bind string: this allows you to set the IP, Port and other paramters for the bind
  + redirect: add a redirect line, an unparsed string like in the backend
  + reqadd: an array of reqadd statements. Looped over and put in the configuration, no parsing
  + default_backend: sets the default backend
  + acls: a list of acls, not parsed, simply looped and put in to the configuration
  + use_backends: a list of use_backend statements, looped over, not parsed

- Backend; Backend(s) is a list of the backends you desire to have in your haproxy setup, per backend you can set:

  + name: set the backend name, used in the frontend references by haproxy
  + balance: set the balance type, string
  + redirect: if set, can be used to redirect; simply a string, not parsed
  + servers: a list of servers this backend will contact, is looped over; per server you can set:

    + name: name of the server for haproxy
    + host: the host to be contacted
    + port: the port to contact the server on
    + check: set to check to enable checking


``haproxy.service``
-------------------

Make sure ``haproxy`` service is running.
