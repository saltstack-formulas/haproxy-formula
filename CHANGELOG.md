# Changelog

# [0.18.0](https://github.com/saltstack-formulas/haproxy-formula/compare/v0.17.1...v0.18.0) (2022-04-08)


### Continuous Integration

* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([eb1dfad](https://github.com/saltstack-formulas/haproxy-formula/commit/eb1dfad99d02a3bb8b7fd27b81a6433dbd778e80))
* update linters to latest versions [skip ci] ([668fcd0](https://github.com/saltstack-formulas/haproxy-formula/commit/668fcd078479b962f0a058e9e2599db9eef5508e))
* **3003.1:** update inc. AlmaLinux, Rocky & `rst-lint` [skip ci] ([dd43437](https://github.com/saltstack-formulas/haproxy-formula/commit/dd43437343ae825a65d0b220ef615218894300a9))
* **gemfile:** allow rubygems proxy to be provided as an env var [skip ci] ([07ffdfe](https://github.com/saltstack-formulas/haproxy-formula/commit/07ffdfe3c87ff9733408e38599aa6e2d4ec14db0))
* **gemfile+lock:** use `ssf` customised `inspec` repo [skip ci] ([df108e6](https://github.com/saltstack-formulas/haproxy-formula/commit/df108e6114b9809a544b9e94e3be22be3983643d))
* **kitchen:** move `provisioner` block & update `run_command` [skip ci] ([7a79c5b](https://github.com/saltstack-formulas/haproxy-formula/commit/7a79c5bd4af4967ba3e347f835c73112d893ec4d))
* **kitchen+ci:** update with `3004` pre-salted images/boxes [skip ci] ([9458feb](https://github.com/saltstack-formulas/haproxy-formula/commit/9458febc34151b3b2c67e654264b9ebea11ca319))
* **kitchen+ci:** update with latest `3003.2` pre-salted images [skip ci] ([8edd6ac](https://github.com/saltstack-formulas/haproxy-formula/commit/8edd6acdacc1bc098d5067323e23a45dbb8e69aa))
* **kitchen+ci:** update with latest CVE pre-salted images [skip ci] ([39e8288](https://github.com/saltstack-formulas/haproxy-formula/commit/39e8288821a044705aadb0e29ef715d6913f468f))
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] ([c16996b](https://github.com/saltstack-formulas/haproxy-formula/commit/c16996bc7a454b2c799f4fd44e4f8586cfb58d56))
* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([ff5224a](https://github.com/saltstack-formulas/haproxy-formula/commit/ff5224ad5241f918ecd53412c66247c4d135f993))
* add Debian 11 Bullseye & update `yamllint` configuration [skip ci] ([ac38984](https://github.com/saltstack-formulas/haproxy-formula/commit/ac38984da71bd427433ae92f0ecce6d4919f2fc1))
* **kitchen+gitlab:** remove Ubuntu 16.04 & Fedora 32 (EOL) [skip ci] ([0bfccc2](https://github.com/saltstack-formulas/haproxy-formula/commit/0bfccc2515481a135e66fe4e0702bcce1d883460))
* add `arch-master` to matrix and update `.travis.yml` [skip ci] ([14f640a](https://github.com/saltstack-formulas/haproxy-formula/commit/14f640ad44eaa0abde7dc7d1cf2c7c3146c05bff))
* **kitchen+gitlab:** adjust matrix to add `3003` [skip ci] ([2fb3a67](https://github.com/saltstack-formulas/haproxy-formula/commit/2fb3a67082513c199d1c713ba1836338cec0ba97))


### Features

* **httpchecks:** support multiple httpcheck lines ([1187532](https://github.com/saltstack-formulas/haproxy-formula/commit/1187532cc26e0b79c1b3e8e1fc8718454ffb7730))


### Tests

* **default:** add `httpcheck` & `httpchecks` values to test pillar ([8977843](https://github.com/saltstack-formulas/haproxy-formula/commit/897784372d51d5bef0b1c12d189f5905746937a9))
* **system:** add `build_platform_codename` [skip ci] ([9f90d8a](https://github.com/saltstack-formulas/haproxy-formula/commit/9f90d8a84738cba0f34474976a225be639a23451))
* standardise use of `share` suite & `_mapdata` state [skip ci] ([9989cb5](https://github.com/saltstack-formulas/haproxy-formula/commit/9989cb5080cca8889f37b48c134e7bc6d2deb09f))

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
