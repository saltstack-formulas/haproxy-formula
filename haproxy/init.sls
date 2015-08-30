# haproxy
#
# Meta-state to fully setup haproxy on debian. (or any other distro that has haproxy in their repo)

include:
{% if salt['pillar.get']('haproxy:include') %}
{% for item in salt['pillar.get']('haproxy:include') %}
  - {{ item }}
{% endfor %}
{% endif %}
  - haproxy.install
  - haproxy.service
  - haproxy.config
