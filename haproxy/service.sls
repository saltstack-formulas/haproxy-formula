haproxy.service:
  service.running:
    - name: haproxy
    - enable: True
    - reload: True
    - require:
      - pkg: haproxy
    - watch:
      - file: haproxy.config
  file.managed:
    - name: /etc/default/haproxy
#TODO: Add switch to turn the service on and off based on pillar configuration.
    - source: salt://haproxy/files/haproxy-init-enable
    - create: True
    - user: "root"
    - group: "root"
    - mode: "0644"
