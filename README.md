bacme
=====

Documentation
-------------

This is a "keep it simple" shell script for requesting a certificate from the
Let's Encrypt CA using the ACME protocol.

Simplifications for example are:

- supports ACMEv2 (RFC 8555) only, not the deprecated ACMEv1
- supports http validation only
- keys are not reused but regenerated every time
  - both the account and the domain key
  - in part this is also because of privacy considerations

The script is intentionally made so by default it will not do anything on your
server by itself. There is no need that you have to run it directly on your
server (as root or otherwise). You keep control over the validation and
installation process.
A typical automated renewal process would be to let the script generate new
private keys, automate the http validation by using an SSH-key-authenticated
rsync with the --webroot option and installing the generated keys and
certificates via e.g. an Ansible playbook.

The script is intended to be easy to understand but still allow the complete
automatic generation of a certificate.
It is also a working small example to learn the ACME protocol.


Let's Encrypt Subscriber Agreement
----------------------------------

By using this script you accept the Let's Encrypt Subscriber Agreement.
The latest version can be found at https://letsencrypt.org/repository/.


Usage
-----

```
Usage: bacme [options...] <domain> [ <domain> ... ]
Options:
  -e, --email EMAIL         Your email if you want that Let's Encrypt can contact you
  -h, --help                This help
  -t, --test                Use staging API of Let's Encrypt for testing the script
  -v, --verbose             Verbose mode, print additional debug output
  -w, --webroot DIRECTORY   Path to the DocumentRoot of your webserver. Can be a rsync
                            compatible remote location like www@myserver:/srv/www/htdocs/.

The first domain parameter should be your main domain name with the subdomains following after it.

Example: ./bacme -e me@example.com -w www@server:/var/www/example/ example.com www.example.com

```

See EXAMPLES.md for sample executions and their output.


Useful links
------------

- ACME protocol: https://tools.ietf.org/html/rfc8555
- Other ACME clients: https://letsencrypt.org/docs/client-options/

