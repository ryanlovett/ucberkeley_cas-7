api = 2
core = 7.x

; phpCAS library
libraries[phpcas][download][type] = "get"
libraries[phpcas][download][url] = "https://github.com/Jasig/phpCAS/archive/1.3.5.tar.gz"

; CAS
projects[cas][type] = module
projects[cas][version] = 1.5
projects[cas][patch][1394666] = "https://drupal.org/files/cas-library-detection-1394666-15.patch"

; CAS Attributes
projects[cas_attributes][type] = module
projects[cas_attributes][version] = 1.0-rc3

; LDAP
projects[ldap][type] = module
projects[ldap][version] = 2.0
projects[ldap][patch][patchforkey] = "https://raw.githubusercontent.com/CellarDoorMedia/Lockr-Patches/drupal7/ldap/ldap-7.x-2.0-beta8-key-integration.patch"
projects[ldap][patch][2870792] = "https://www.drupal.org/files/issues/ldap_servers-fix-wdog-updb_2870792.patch"
projects[ldap][patch][2870798] = "https://www.drupal.org/files/issues/ldap_servers-fix-ldap_authentication-sids-2870798.patch"

; UC Berkeley CAS Feature
; TODO: update dl options
; specify type=module to prevent "No release history was found for the requested project (ucberkeley_cas)."
projects[ucberkeley_cas][type] = "module"
projects[ucberkeley_cas][download][type] = "git"
projects[ucberkeley_cas][download][url] = "git@github.com:bwood/ucberkeley_cas-7.git"
projects[ucberkeley_cas][download][branch] = "master"
projects[ucberkeley_cas][download][tag] = "7.x-3.0.0"
