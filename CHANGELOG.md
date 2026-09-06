# Changelog

## [1.1.1](https://github.com/Agba-Security/platform-team-admin/compare/v1.1.0...v1.1.1) (2026-09-06)


### Bug Fixes

* **ci:** corrected the path for commit-msg valdation and chnged to on:worrkflow_dispatch on the terraform CI ([818b84b](https://github.com/Agba-Security/platform-team-admin/commit/818b84b0a0b6f5d2ec4db70cd9fdc4e918767c1c))
* **commit-convention:** addedd a working commit-msg to the workflow ([25b8013](https://github.com/Agba-Security/platform-team-admin/commit/25b8013bc5f4d90101f8e984fae76aa7954a7be8))
* **config:** corrected the file name and path for commit-msg validation ([0bbbb8d](https://github.com/Agba-Security/platform-team-admin/commit/0bbbb8d97aa96743936597d4858ca6f29d03657c))
* **config:** fixed the commit-msg validation and installation duuring git pull ([3735676](https://github.com/Agba-Security/platform-team-admin/commit/3735676858e5dcdea6fed1345dd283a16497f54c))


### CI/CD

* **action:** addedd a commit-msg validation on the repo CI ([a825cc2](https://github.com/Agba-Security/platform-team-admin/commit/a825cc22c9252d11e13d5f26a55a654a9a3c5c01))

## [1.1.0](https://github.com/Agba-Security/platform-team-admin/compare/v1.0.0...v1.1.0) (2026-09-05)


### Features

* **commit-convention:** enforce commit convention ([9a4e43c](https://github.com/Agba-Security/platform-team-admin/commit/9a4e43c1a97cec0bab39e17f707b3054d16ff13c))


### Bug Fixes

* **workflow:** automated terraform validation, formating and plan and also added release-please config and manifest keys ([9a5278e](https://github.com/Agba-Security/platform-team-admin/commit/9a5278eaf8f2a48ebb0d4815ab005ba837b8a794))
* **workflows:** fixed actions to see terraform folder from the root ([bc97b71](https://github.com/Agba-Security/platform-team-admin/commit/bc97b71053a0e2855cbbcdb666c4353d6cef4687))

## 1.0.0 (2026-09-04)


### Features

* **config:** add .env placeholder for bitwarden connection ([118b823](https://github.com/Agba-Security/platform-team-admin/commit/118b823cb8ee890c3c101e7900340cf5805abbb6))
* **config:** add github secret placceholder and inject_secrets.sh ([9154504](https://github.com/Agba-Security/platform-team-admin/commit/9154504c7d203435026728f677f131aec23379d6))
* **config:** add initial repository definitions ([79c4bc3](https://github.com/Agba-Security/platform-team-admin/commit/79c4bc35b3b9f79f5ccb83c2ca46528ac66cd8da))
* **config:** release please config ([3567691](https://github.com/Agba-Security/platform-team-admin/commit/35676911a71b8f3838b8d184897e055d69ae164a))
* **config:** release please manifes ([c1b11ff](https://github.com/Agba-Security/platform-team-admin/commit/c1b11ff2e5d93e16f0aa883f7ed3c4e4ec22531b))
* **terraform:** add github repository provisioning with bitwarden-backed auth ([b521f47](https://github.com/Agba-Security/platform-team-admin/commit/b521f478c8aab919ebf894b24e748a28686f77e1))
