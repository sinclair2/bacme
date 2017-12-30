lecert
======

Documentation
-------------

This is a "keep it simple" shell script for requesting a certificate from the
Let's Encrypt CA using the ACME protocol.

Simplifications for example are:
- account key is not reused but regenerated every time (for each domain)
- domain key is not reused but regenerated every time
- certificate subject is alwas $domain.tld and www.$domain.tld
- supports http validation only
- needs manual steps for putting the challenge tokens to your document root
- needs manual steps for installing the certificate to your webserver

The script is intended to be easy to understand but still allow the complete
semi-automatic generation of certificates. If you want something different it
should be easy to identify the relevant part in the code and adjust it to your
needs. It is also a working axample to learn the ACME protocol from.

Let's Encrypt Subscriber Agreement
----------------------------------

By using this script you accept the Let's Encrypt Subscriber Agreement.
The latest version can be found at https://letsencrypt.org/repository/

Known issues
------------
- Requires bash because of usage of PIPESTATUS.

Useful links
------------
- ACME protocol:
  https://ietf-wg-acme.github.io/acme/
- Other ACME clients
  https://github.com/lukas2511/dehydrated/
  https://gethttpsforfree.com/

