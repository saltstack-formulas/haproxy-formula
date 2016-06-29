haproxy.config:
 file.managed:
   - name: {{ salt['pillar.get']('haproxy:config_file_path', '/etc/haproxy/haproxy.cfg') }}
   - source: salt://haproxy/templates/haproxy.jinja
   - template: jinja
   - user: root
   {% if salt['grains.get']('os_family') == 'FreeBSD' %}
   - group: wheel
   {% else %}
   - group: root
   {% endif %}
   - mode: 644
   - require_in:
     - service: haproxy.service
   - watch_in:
     - service: haproxy.service
   {% if salt['pillar.get']('haproxy:overwrite', default=True) == False %}
   - unless:
     - test -e {{ salt['pillar.get']('haproxy:config_file_path', '/etc/haproxy/haproxy.cfg') }}
   {% endif %}
