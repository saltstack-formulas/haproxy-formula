{% from "haproxy/map.jinja" import haproxy with context %}

{% set config_file = salt['pillar.get']('haproxy:config_file_path', haproxy.config_file) %}
haproxy.config:
 file.managed:
   - name: {{ config_file }}
   - source: {{ haproxy.config_file_source }}
   - template: jinja
   - user: {{ haproxy.user }}
   {% if salt['grains.get']('os_family') == 'FreeBSD' %}
   - group: wheel
   {% else %}
   - group: {{ haproxy.group }}
   {% endif %}
   - mode: 644
   - require_in:
     - service: haproxy.service
   - watch_in:
     - service: haproxy.service
   {% if salt['pillar.get']('haproxy:overwrite', default=True) == False %}
   - unless:
     - test -e {{ config_file }}
   {% endif %}
