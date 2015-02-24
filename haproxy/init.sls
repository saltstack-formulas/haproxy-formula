# haproxy
#
# Meta-state to fully setup haproxy on debian. (or any other distro that has haproxy in their repo)

include:
  - haproxy.install
  - haproxy.service
  - haproxy.config