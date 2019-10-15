
{% set hosts = salt['pillar.get']('hosts', []) %}

{% for host in hosts %}
  {% for name, ip in host.items() %}
{{ name }}:
  host.present:
    - ip: {{ ip }}
  {% endfor %}
{% endfor %}

