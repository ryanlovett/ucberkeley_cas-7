<?php
/**
 * @file
 * ucberkeley_cas.strongarm.inc
 */

/**
 * Implements hook_strongarm().
 */
function ucberkeley_cas_strongarm() {
  $export = array();

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'cas_attributes_ldap_server';
  $strongarm->value = 'ucb_prod';
  $export['cas_attributes_ldap_server'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'cas_attributes_relations';
  $strongarm->value = array(
    'name' => '[cas:ldap:displayname]',
    'mail' => '[cas:ldap:mail]',
  );
  $export['cas_attributes_relations'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'cas_port';
  $strongarm->value = '443';
  $export['cas_port'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'cas_version';
  $strongarm->value = '3.0';
  $export['cas_version'] = $strongarm;

  return $export;
}
