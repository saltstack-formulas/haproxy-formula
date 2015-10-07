# haproxy
#
# Meta-state to fully setup haproxy on debian. (or any other distro that has haproxy in their repo)

{% if salt['pillar.get']('haproxy:include') %}
include:
{% for item in salt['pillar.get']('haproxy:include', ('haproxy.install', 'haproxy.service', 'haproxy.config')) %}
  - {{ item }}
{% endfor %}
{% endif %}
