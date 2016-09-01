# Class: generic::config
# ===========================
#
# Simple puppet moudle to allow abstraction of any puppet type from hiera.
#
# Parameters
# ----------
#
#
# * `params`
# Takes in a hash value from hiera with a set of keys, one of those keys are type and the values from below them will be used for resource creation 
#
#
# Examples
# --------
# generic::config::params:
#    'type':
#         'package':
#             'nginx':
#                ensure: latest
#             'whois':
#                ensure: latest
#         'exec':
#             'test':
#              path: '/usr/bin'
#              command: "/usr/bin/touch /tmp/winrar"
# Authors
# -------
#
# Michael Baker <michael.baker@bulletproof.net>
#
# Copyright
# ---------
#
# Copyright 2016 Bulletproof Networks, unless otherwise noted.
#

class generic::config (
    $params = {},
){
     $type_keys = keys($params['type'])
     $type_keys.each |String  $value| { 
      create_resources($value, $params['type'][$value] )
     }
}
