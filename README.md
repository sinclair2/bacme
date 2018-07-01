lecert
======

Documentation
-------------

This is a "keep it simple" shell script for requesting a certificate from the
Let's Encrypt CA using the ACME protocol.

Simplifications for example are:

- supports http validation only
- keys are not reused but regenerated every time
  - both the account key and the domain key
  - in part this is also because of privacy considerations

The script is intentionally made so by default it will not do anything on your
server by itself. There is no need that you have to run it directly on your
server (as root or otherwise). You keep control over the authorization and
installation process.
A typical automated renewal process would be to let the script generate new
private keys, automate the http validation by using a SSH key authenticated
rsync with the --webroot option and installing the generated keys and
certificates via e.g. an Ansible playbook.

The script is intended to be easy to understand but still allow the complete
automatic generation of certificates.
It is also a working small example to learn the ACME protocol.


Let's Encrypt Subscriber Agreement
----------------------------------

By using this script you accept the Let's Encrypt Subscriber Agreement.
The latest version can be found at https://letsencrypt.org/repository/


Known issues
------------

- Requires bash because of usage of PIPESTATUS.


Useful links
------------

- ACME protocol: https://ietf-wg-acme.github.io/acme/
- Other ACME clients: https://letsencrypt.org/docs/client-options/

