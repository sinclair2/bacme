
Execution with automatic copying of challenges to webroot
---------------------------------------------------------

```
> ./bacme -w www@server:/var/www/example/ "example.com" "www.example.com"
#### Creating domain subdirectory ...
#### Done. example.com/ created.
#### Getting URL of current subscriber agreement ...
#### OK https://letsencrypt.org/documents/LE-SA-v1.2-November-15-2017.pdf
#### Generating account key ...
#### Private key: example.com/account.key
Generating RSA private key, 4096 bit long modulus
...........................++++
..................................++++
e is 65537 (0x010001)
#### Public key: example.com/account.pub
writing RSA key
#### OK
#### Registering account ...
#### OK
#### Generating domain private key ...
#### Private key: example.com/example.com.key
Generating RSA private key, 4096 bit long modulus
................................................................................................................++++
...........................................................................................++++
e is 65537 (0x010001)
#### Creating order ...
#### OK
#### Getting authorization tokens ...
####  for example.com
####  for www.example.com
#### OK
#### Doing HTTP validation
#### Copying challenge tokens to DocumentRoot www@server:/var/www/example/ ...
#### Done
#### Responding to challenges ...
#### OK
#### Waiting for validation ...
#### Done
#### Creating CSR ...
#### Done example.com/example.com.csr
#### Finalizing order ...
#### OK
#### Downloading certificate ...
#### Success! Certificate saved: example.com/example.com.crt
#### Deleting challenge tokens in DocumentRoot www@server:/var/www/example/ ...
#### Done
#### Finished.
```


Execution with manual copying of challenges to webroot
------------------------------------------------------

```
> ./bacme example.com www.example.com
#### Creating domain subdirectory ...
#### Done. example.com/ created.
#### Getting URL of current subscriber agreement ...
#### OK https://letsencrypt.org/documents/LE-SA-v1.2-November-15-2017.pdf
#### Generating account key ...
#### Private key: example.com/account.key
Generating RSA private key, 4096 bit long modulus
.................................................................................................................................++++
..................................................++++
e is 65537 (0x010001)
#### Public key: example.com/account.pub
writing RSA key
#### OK
#### Registering account ...
#### OK
#### Generating domain private key ...
#### Private key: example.com/example.com.key
Generating RSA private key, 4096 bit long modulus
..................................++++
....................++++
e is 65537 (0x010001)
#### Creating order ...
#### OK
#### Getting authorization tokens ...
####  for example.com
####  for www.example.com
#### OK
#### Doing HTTP validation
#### Execute in your DocumentRoot:


mkdir -p .well-known/acme-challenge
echo 'zNmMWVkZWUwYTg4YmFkYjNlOWZkYmY0NjE0OWYxNWQg.NGU3ZGMzM2NkM2FjZjNmOTUxYmRiZWY2NDllMmUzMjk' > .well-known/acme-challenge/zNmMWVkZWUwYTg4YmFkYjNlOWZkYmY0NjE0OWYxNWQg
echo 'YmU1Yzc4ZTk3YWMyYjg2OWYxYzIzYTBjNWJhMWI5ODQ.ATU3MDU3MWMzZjBiZmJkYjdmMDMwNGVjOGU3NjlkYjd' > .well-known/acme-challenge/YmU1Yzc4ZTk3YWMyYjg2OWYxYzIzYTBjNWJhMWI5ODQ


#### Press [Enter] when done.

#### Responding to challenges ...
#### OK
#### Waiting for validation ...
#### Done
#### Creating CSR ...
#### Done example.com/example.com.csr
#### Finalizing order ...
#### OK
#### Downloading certificate ...
#### Success! Certificate saved: example.com/example.com.crt
#### You can do now in your DocumentRoot:


rm -r .well-known


#### Finished.
```


