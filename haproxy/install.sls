# Because on Ubuntu we don't have a current HAProxy in the usual repo, we add a PPA
{% if salt['grains.get']('osfullname') == 'Ubuntu' %}
haproxy_ppa_repo:
  pkgrepo.managed:
    - ppa: vbernat/haproxy-1.5
    - require_in:
      - pkg: haproxy.install
    - watch_in:
      - pkg: haproxy.install
{% endif %}

haproxy.install:
  pkg.installed:
    - name: haproxy
