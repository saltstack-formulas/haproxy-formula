.. _readme:

haproxy-formula
===============

|img_travis| |img_sr|

.. |img_travis| image:: https://travis-ci.com/saltstack-formulas/haproxy-formula.svg?branch=master
   :alt: Travis CI Build Status
   :scale: 100%
   :target: https://travis-ci.com/saltstack-formulas/haproxy-formula
.. |img_sr| image:: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
   :alt: Semantic Release
   :scale: 100%
   :target: https://github.com/semantic-release/semantic-release

Install, configure and run ``haproxy``.

.. contents:: **Table of Contents**
   :depth: 1

General notes
-------------

See the full `SaltStack Formulas installation and usage instructions
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

If you are interested in writing or contributing to formulas, please pay attention to the `Writing Formula Section
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#writing-formulas>`_.

If you want to use this formula, please pay attention to the ``FORMULA`` file and/or ``git tag``,
which contains the currently released version. This formula is versioned according to `Semantic Versioning <http://semver.org/>`_.

See `Formula Versioning Section <https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#versioning>`_ for more details.

If you need (non-default) configuration, please pay attention to the ``pillar.example`` file and/or `Special notes`_ section.

Contributing to this repo
-------------------------

**Commit message formatting is significant!!**

Please see `How to contribute <https://github.com/saltstack-formulas/.github/blob/master/CONTRIBUTING.rst>`_ for more details.

Special notes
-------------

Use the supplied haproxy.cfg for a flat file approach,
or the jinja template and the pillar for a salt approach.

Available states
----------------

.. contents::
   :local:

``haproxy``
^^^^^^^^^^^^

*Meta-state (This is a state that includes other states)*.

This installs the haproxy package,
manages the haproxy configuration file and then
starts the associated haproxy service.

``haproxy.install``
^^^^^^^^^^^^^^^^^^^^

This state will install the haproxy package only.

``haproxy.config``
^^^^^^^^^^^^^^^^^^^

This state will configure the haproxy service and has a dependency on ``haproxy.install``
via include list.

Currently, only a handful of options can be set using the pillar:

- Global

  + stats: enable stats, currently only via a unix socket which can be set to a path with custom permissions and optional extra bind arguments
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
  + blocks: a list of block statements, not parsed, simply looped and put in to the configuration
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

- For global, default, frontend, listener, backend and server it is possible to use the "extra" option for more rare settings not mentioned above.

``haproxy.service``
^^^^^^^^^^^^^^^^^^^^

This state will start the haproxy service and has a dependency on ``haproxy.config``
via include list.

Testing
-------

Linux testing is done with ``kitchen-salt``.

Requirements
^^^^^^^^^^^^

* Ruby
* Docker

.. code-block:: bash

   $ gem install bundler
   $ bundle install
   $ bin/kitchen test [platform]

Where ``[platform]`` is the platform name defined in ``kitchen.yml``,
e.g. ``debian-9-2019-2-py3``.

``bin/kitchen converge``
^^^^^^^^^^^^^^^^^^^^^^^^

Creates the docker instance and runs the ``haproxy`` main state, ready for testing.

``bin/kitchen verify``
^^^^^^^^^^^^^^^^^^^^^^

Runs the ``inspec`` tests on the actual instance.

``bin/kitchen destroy``
^^^^^^^^^^^^^^^^^^^^^^^

Removes the docker instance.

``bin/kitchen test``
^^^^^^^^^^^^^^^^^^^^

Runs all of the stages above in one go: i.e. ``destroy`` + ``converge`` + ``verify`` + ``destroy``.

``bin/kitchen login``
^^^^^^^^^^^^^^^^^^^^^

Gives you SSH access to the instance for manual testing.

