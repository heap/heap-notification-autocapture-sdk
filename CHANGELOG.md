# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.8.3]

### Fixed

- Fixed loading this framework in a unit test bundle that doesn't have a test host.

## [0.8.2]

### Changed

- It is no longer necessary to call `HeapIOSNotificationAutocapture.captureInitialNotifications()`
  in cases where registration may be deferred (like Flutter or React Native).

## [0.8.1]

### Fixed

- Fixed crash when used against HeapSwiftCore 0.8.8.

### Changed

- Set minimum HeapSwiftCore dependency to 0.8.8.

## [0.8.0]

### Changed

- Set minimum HeapSwiftCore version to 0.8.0.

## [0.7.0]

### Added

- Notification autocapture SDK.

[0.8.3]: https://github.com/heap/heap-notification-autocapture-sdk/releases/tag/0.8.3
[0.8.2]: https://github.com/heap/heap-notification-autocapture-sdk/releases/tag/0.8.2
[0.8.1]: https://github.com/heap/heap-notification-autocapture-sdk/releases/tag/0.8.1
[0.8.0]: https://github.com/heap/heap-notification-autocapture-sdk/releases/tag/0.8.0
[0.7.0]: https://github.com/heap/heap-notification-autocapture-sdk/releases/tag/0.7.0
