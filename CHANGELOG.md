# Changelog

## [0.17.1](https://github.com/saltstack-formulas/haproxy-formula/compare/v0.17.0...v0.17.1) (2021-03-04)


### Bug Fixes

* **config:** ensure `haproxy:global:chroot:path` is created if provided ([92831b6](https://github.com/saltstack-formulas/haproxy-formula/commit/92831b6d2f6889759f8e49aa9c56cf0062b56155))
* **templates/haproxy.jinja:** replace deprecated `reqadd` ([8c6c855](https://github.com/saltstack-formulas/haproxy-formula/commit/8c6c85593659c3ffa37c44651049f0104c63af3a)), closes [/github.com/haproxy/haproxy/blob/31dd393da0e6c20bf65ea833d10635a8b26cb355/src/cfgparse-listen.c#L2843-L2845](https://github.com//github.com/haproxy/haproxy/blob/31dd393da0e6c20bf65ea833d10635a8b26cb355/src/cfgparse-listen.c/issues/L2843-L2845)


### Continuous Integration

* **commitlint:** ensure `upstream/master` uses main repo URL [skip ci] ([c80fa08](https://github.com/saltstack-formulas/haproxy-formula/commit/c80fa08e2ab7ad220bad0182935d0e8cde582ae7))
* **gemfile+lock:** use `ssf` customised `kitchen-docker` repo [skip ci] ([db31f52](https://github.com/saltstack-formulas/haproxy-formula/commit/db31f527d7e7bfab0aed5964c16e4f68c5c598fa))
* **gitlab-ci:** add `rubocop` linter (with `allow_failure`) [skip ci] ([1792404](https://github.com/saltstack-formulas/haproxy-formula/commit/1792404822afe8117ea9c2e5c38db8041fce7e77))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([17911ca](https://github.com/saltstack-formulas/haproxy-formula/commit/17911caf56eda9d025c0833e6c6714b3fb6b7eaf))
* **kitchen+gitlab-ci:** use latest pre-salted images ([ae579a7](https://github.com/saltstack-formulas/haproxy-formula/commit/ae579a77d61afb5aaa15bf7d52e71e59dc7a5d11))
* **pre-commit:** add to formula [skip ci] ([649b533](https://github.com/saltstack-formulas/haproxy-formula/commit/649b533c21d5f4b9d8b48f4cbea16fc6210392e1))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([79ec26d](https://github.com/saltstack-formulas/haproxy-formula/commit/79ec26d59f9a1aa9550aa3c5cd3a24bfb4436dd0))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([0792e26](https://github.com/saltstack-formulas/haproxy-formula/commit/0792e2614b87ab2ea30f25af9b0387075fb83497))
* **pre-commit:** update hook for `rubocop` [skip ci] ([a73b49f](https://github.com/saltstack-formulas/haproxy-formula/commit/a73b49f432000f45ee08352d7607ffdeaaab7986))


### Tests

* **pillar:** provide `default` pillar working on all platforms ([12be6ff](https://github.com/saltstack-formulas/haproxy-formula/commit/12be6ff15c0c23d385ebed308ad953a399b86b3f))

# [0.17.0](https://github.com/saltstack-formulas/haproxy-formula/compare/v0.16.0...v0.17.0) (2020-06-16)


### Bug Fixes

* **rubocop:** fix violations using `rubocop -a` ([98076d3](https://github.com/saltstack-formulas/haproxy-formula/commit/98076d3bb952f6731f3aa1170bb4ebe86708f6de))


### Code Refactoring

* **kitchen:** prefer `kitchen.yml` to `.kitchen.yml` ([47eabab](https://github.com/saltstack-formulas/haproxy-formula/commit/47eababd780a08ebe888d174d640cf90c059745a))


### Continuous Integration

* **salt-lint:** fix ([60e8d19](https://github.com/saltstack-formulas/haproxy-formula/commit/60e8d19f0357051d4dfcac8339872443b936498e))
* **yamlint:** fix ([1072b1d](https://github.com/saltstack-formulas/haproxy-formula/commit/1072b1d8125289e118fc4dc2a7b61ee6f3e1f931))


### Documentation

* **readme:** merge with original `README` ([870474e](https://github.com/saltstack-formulas/haproxy-formula/commit/870474e53a7c45fee3cd7cd897375fea7bf6028b))


### Features

* implement semantic release ([d921a49](https://github.com/saltstack-formulas/haproxy-formula/commit/d921a49bda6743c839f81a3e22b3ba54c6ad99d8))
