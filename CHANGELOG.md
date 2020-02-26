# ChangeLog

## [Unreleased]
### Changed
- case-insensitive parsing of location HTTP header field (#4)
- wait in several attempts for challenge validation instead of hard-coded 5 seconds (#5)


## [1.1.0] 2020-02-02
### Changed
- renamed from _lecert_ to _bacme_ to avoid Let's Encrypt trademark issues


## [1.0.0] 2020-01-04
### Changed
- migrated to ACMEv2 API (RFC 8555)


## [0.3.0] 2018-07-04
### Added
- option -w/--webroot for automating the copying of token files to the
  DocumentRoot, either locally or remote via rsync
- Configurable list of multiple domain names (#1)

### Changed
- adapted normal and debug output of script
- use http://keepachangelog.com formatting for this CHANGELOG
- manage private key file permissions so they are ownly owner-accessible at any
  time of their generation
- Load openssl.conf relative to script path (#2)
- renamed option -d/--debug to -v/--verbose


## [0.2.0] - 2017-12-03
### Added
- automatic use of newest subscriber agreement URL

### Changed
- logging


## [0.1.0] - 2016-09-05
### Added
- initial version

