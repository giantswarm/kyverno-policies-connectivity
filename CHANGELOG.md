# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Set `validationFailureAction: Enforce`.

## [0.4.1] - 2023-05-10

### Added

- Add push to `gcp-app-collection`.
- Add push to `vsphere-app-collection`.

### Changed

- Make the name based exclusion of the `inject-proxy-env-to-containers` policy configurable. Defaulting to status quo.

## [0.4.0] - 2023-03-14

### Added

- Add push to `capz-app-collection`

### Changed

- Update clusterctl versions for circleci test
- Update CAPI providers versions for circleci test
- Apply proxy variables to pod controllers templates instead of directly to pods.

## [0.3.2] - 2023-01-11

### Added

- Add annotation that allows blocking the proxy env injection on specific pod.

### Changed

- Remove the `kyverno validate` CI step.

## [0.3.1] - 2022-12-15

### Added

- Add job to circleci that pushes to the `cloud-director-app-collection`.
- Exclude `capi-` `dex-k8s-*` pods from the env proxy injection.

## [0.3.0] - 2022-12-13

## Added

- Support dynamic policy configuration for proxy.

## [0.2.3] - 2022-11-30

## Added

- Add job to circleci that pushes to the `capa-app-collection`

## [0.2.2] - 2022-11-29

## Fixed

- Removed the `=()` conditional from initContainers and ephemeralContainers. It isn't supported in mutate rules

## [0.2.1] - 2022-11-15

### Fixed

- Add missing new line during rendering to get a valid manifest.

## [0.2.0] - 2022-11-14

### Changed

- Add support for respect `.cluster` values (generated on a cluster base by `cluster-apps-operator`)

## [0.1.1] - 2022-11-14

## [0.1.0] - 2022-10-25

### Changed

- App configuration is now done via config repo.

### Removed

- Removed `installation` repo based configuration approach.

## [0.0.3] - 2022-10-18

## [0.0.2] - 2022-10-10

### Added

- It's possible to inject proxy vars only for given namespaces

## [0.0.1] - 2022-04-01

### Added

- Initial policies moved from [`kyverno-policies`](https://github.com/giantswarm/kyverno-policies).

[Unreleased]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.4.1...HEAD
[0.4.1]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.4.0...v0.4.1
[0.4.0]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.3.2...v0.4.0
[0.3.2]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.3.1...v0.3.2
[0.3.1]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.2.3...v0.3.0
[0.2.3]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.2.2...v0.2.3
[0.2.2]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.2.1...v0.2.2
[0.2.1]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.0.3...v0.1.0
[0.0.3]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.0.2...v0.0.3
[0.0.2]: https://github.com/giantswarm/kyverno-policies-connectivity/compare/v0.0.1...v0.0.2
[0.0.1]: https://github.com/giantswarm/kyverno-policies-connectivity/releases/tag/v0.0.1
