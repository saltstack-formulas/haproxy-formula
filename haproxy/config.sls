{% from tpldir ~ "/map.jinja" import haproxy with context %}

{% set config_file = salt['pillar.get']('haproxy:config_file_path', haproxy.config_file) %}
haproxy.config:
  file.managed:
    - name: {{ config_file }}
    - source: {{ haproxy.config_file_source }}
    - template: jinja
    - user: {{ haproxy.user }}
    - group: {{ haproxy.group }}
    - mode: 644
    - require_in:
      - service: haproxy.service
    - watch_in:
      - service: haproxy.service
    {% if salt['pillar.get']('haproxy:overwrite', default=True) == False %}
    - unless:
      - test -e {{ config_file }}
    {% endif %}

{% if salt['pillar.get']('haproxy:global:chroot:enable', False) and
      salt['pillar.get']('haproxy:global:chroot:path', '') %}
haproxy-chroot-directory:
  file.directory:
    - name: {{ salt['pillar.get']('haproxy:global:chroot:path') }}
    - user: {{ haproxy.user }}
    - group: {{ haproxy.group }}
    - dir_mode: 755
    - require_in:
      - service: haproxy.service
{% endif %}
