# bulletproof-generic
A very small puppet module that will allow you to abstract puppet types from within hiera. This was not designed to be used outside of hiera example usage below.

For example
```yaml
generic::config::params:
   'type':
        'package':
            'nginx':
               ensure: latest
            'whois':
               ensure: latest
        'exec':
            'test':
             path: '/usr/bin'
             command: "/usr/bin/touch /tmp/winrar"
```
