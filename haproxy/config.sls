haproxy.config:
 file.managed:
   - name: /etc/haproxy/haproxy.cfg
   - source: salt://haproxy/templates/haproxy.jinja
   - template: jinja
   - user: root
   - group: root
   - mode: 644
