haproxy.service:
  service.running:
    - name: haproxy
    - enable: True
    - reload: True
    - require:
      - pkg: haproxy
    - watch:
      - file: haproxy.config
  file.replace:
    - name: /etc/default/haproxy
{% if salt['pillar.get']('haproxy:enabled', True) %}
    - pattern: ENABLED=0$
    - repl: ENABLED=1
{% else %}
    - pattern: ENABLED=1$
    - repl: ENABLED=0
{% endif %}
    - show_changes: True
