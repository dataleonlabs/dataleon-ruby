# Changelog

## 0.1.0-alpha.13 (2026-01-15)

Full Changelog: [v0.1.0-alpha.12...v0.1.0-alpha.13](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.1.0-alpha.12...v0.1.0-alpha.13)

### Features

* **api:** api update ([54a4762](https://github.com/dataleonlabs/dataleon-ruby/commit/54a4762a2b250c8153ce0bbb1960a092a81bd841))


### Chores

* move `cgi` into dependencies for ruby 4 ([8a66179](https://github.com/dataleonlabs/dataleon-ruby/commit/8a6617943bc96abfd9726b7f031ba5d007e1459f))


### Documentation

* prominently feature MCP server setup in root SDK readmes ([876b9fd](https://github.com/dataleonlabs/dataleon-ruby/commit/876b9fd30758a8d9eff2b60610bd90da787e3ac3))

## 0.1.0-alpha.12 (2026-01-05)

Full Changelog: [v0.1.0-alpha.11...v0.1.0-alpha.12](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.1.0-alpha.11...v0.1.0-alpha.12)

### Features

* **api:** api update ([b65ff9a](https://github.com/dataleonlabs/dataleon-ruby/commit/b65ff9aa826ee0ecf791c317c9db158b50ad6c4d))

## 0.1.0-alpha.11 (2025-12-19)

Full Changelog: [v0.1.0-alpha.10...v0.1.0-alpha.11](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.1.0-alpha.10...v0.1.0-alpha.11)

### Bug Fixes

* issue where json.parse errors when receiving HTTP 204 with nobody ([2bb84e5](https://github.com/dataleonlabs/dataleon-ruby/commit/2bb84e59e28fb9af2bbbde1fa782a46125598c8e))

## 0.1.0-alpha.10 (2025-12-17)

Full Changelog: [v0.1.0-alpha.9...v0.1.0-alpha.10](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.1.0-alpha.9...v0.1.0-alpha.10)

### Bug Fixes

* calling `break` out of streams should be instantaneous ([cbd124f](https://github.com/dataleonlabs/dataleon-ruby/commit/cbd124f5c46c4927a35f7c79e49d9628d75151ac))


### Chores

* explicitly require "base64" gem ([c0b49fe](https://github.com/dataleonlabs/dataleon-ruby/commit/c0b49fe5379c7717e4e8fb01a9bb48c5a98590c9))

## 0.1.0-alpha.9 (2025-11-05)

Full Changelog: [v0.1.0-alpha.8...v0.1.0-alpha.9](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.1.0-alpha.8...v0.1.0-alpha.9)

### Features

* handle thread interrupts in the core HTTP client ([a5fbf02](https://github.com/dataleonlabs/dataleon-ruby/commit/a5fbf02417a91437f77154b8264ad70ed5092ba9))


### Bug Fixes

* better thread safety via early initializing SSL store during HTTP client creation ([4c5d69f](https://github.com/dataleonlabs/dataleon-ruby/commit/4c5d69f2c7071091ae99514eb1d47a02de14a009))


### Chores

* bump dependency version and update sorbet types ([5ffbe59](https://github.com/dataleonlabs/dataleon-ruby/commit/5ffbe59f7f0b4eb5d3b23f0424344ced0cdbaa79))

## 0.1.0-alpha.8 (2025-10-16)

Full Changelog: [v0.1.0-alpha.7...v0.1.0-alpha.8](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.1.0-alpha.7...v0.1.0-alpha.8)

### Bug Fixes

* absolutely qualified uris should always override the default ([8104691](https://github.com/dataleonlabs/dataleon-ruby/commit/810469171a273400a933fa153e0e5d2ee51ef366))

## 0.1.0-alpha.7 (2025-10-15)

Full Changelog: [v0.1.0-alpha.6...v0.1.0-alpha.7](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.1.0-alpha.6...v0.1.0-alpha.7)

### Bug Fixes

* should not reuse buffers for `IO.copy_stream` interop ([1e4aa0f](https://github.com/dataleonlabs/dataleon-ruby/commit/1e4aa0fd0451c10ee19d39b0e8c09c3e3a6011c0))

## 0.1.0-alpha.6 (2025-10-14)

Full Changelog: [v0.1.0-alpha.5...v0.1.0-alpha.6](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.1.0-alpha.5...v0.1.0-alpha.6)

### Features

* **api:** api update ([da31c93](https://github.com/dataleonlabs/dataleon-ruby/commit/da31c9384bef750d7d616374de3317612e3bc5fc))


### Chores

* ignore linter error for tests having large collections ([a1dea27](https://github.com/dataleonlabs/dataleon-ruby/commit/a1dea27cf8d7dfa861fad0efd4b67535b9c1b361))

## 0.1.0-alpha.5 (2025-10-01)

Full Changelog: [v0.1.0-alpha.4...v0.1.0-alpha.5](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.1.0-alpha.4...v0.1.0-alpha.5)

### Bug Fixes

* coroutine leaks from connection pool ([06da7fc](https://github.com/dataleonlabs/dataleon-ruby/commit/06da7fcb30b16624046a39e01933adf66305830e))

## 0.1.0-alpha.4 (2025-09-30)

Full Changelog: [v0.1.0-alpha.3...v0.1.0-alpha.4](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.1.0-alpha.3...v0.1.0-alpha.4)

### Bug Fixes

* always send `filename=...` for multipart requests where a file is expected ([31a5af0](https://github.com/dataleonlabs/dataleon-ruby/commit/31a5af0186e3d03adbfae5d66485923171db9029))


### Chores

* allow fast-format to use bsd sed as well ([be7168e](https://github.com/dataleonlabs/dataleon-ruby/commit/be7168e38a0b8f4acb0833bda45cf98083824890))

## 0.1.0-alpha.3 (2025-09-27)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Features

* expose response headers for both streams and errors ([ebb2504](https://github.com/dataleonlabs/dataleon-ruby/commit/ebb2504fa38612b5190c63cac4d6e60e66bcddbe))


### Bug Fixes

* shorten multipart boundary sep to less than RFC specificed max length ([9e558ee](https://github.com/dataleonlabs/dataleon-ruby/commit/9e558ee95b15722045ce4a262ee3f2e5f73bc3c0))


### Performance Improvements

* faster code formatting ([27804b2](https://github.com/dataleonlabs/dataleon-ruby/commit/27804b27cd7a0c1a59944c5b2f013c036c7e94eb))


### Chores

* do not install brew dependencies in ./scripts/bootstrap by default ([c535098](https://github.com/dataleonlabs/dataleon-ruby/commit/c5350986f63181050f11ed546727b8a0d819585a))
* **internal:** codegen related update ([32f1bc3](https://github.com/dataleonlabs/dataleon-ruby/commit/32f1bc3178d0a146dbb0cea870bc94c9e7c7d919))

## 0.1.0-alpha.2 (2025-09-10)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Features

* **api:** api update ([6413660](https://github.com/dataleonlabs/dataleon-ruby/commit/641366028b90c0982a2ab33de4ead0ac80d99658))

## 0.1.0-alpha.1 (2025-08-27)

Full Changelog: [v0.0.1-alpha.1...v0.1.0-alpha.1](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.0.1-alpha.1...v0.1.0-alpha.1)

### Features

* **api:** api update ([1909edc](https://github.com/dataleonlabs/dataleon-ruby/commit/1909edce91c6e37fecf0310e2a81672589bcd2dd))
* **api:** api update ([3ba0d52](https://github.com/dataleonlabs/dataleon-ruby/commit/3ba0d52cd5938dbd6b5193274e343602a3c06c50))
* **api:** api update ([fb6c613](https://github.com/dataleonlabs/dataleon-ruby/commit/fb6c61357e5fb4f8733a30f88611ed304b2e62f2))
* **api:** api update ([1aa4cd8](https://github.com/dataleonlabs/dataleon-ruby/commit/1aa4cd81d6e010d4604f7d65af3acff2724f6a78))
* **api:** api update ([0eacf41](https://github.com/dataleonlabs/dataleon-ruby/commit/0eacf412b108aef5b3c41472a3000daab150aab7))
* **api:** api update ([8944366](https://github.com/dataleonlabs/dataleon-ruby/commit/8944366fca978b8a616bb2fb187ef486890f513f))
* **api:** api update ([4725f22](https://github.com/dataleonlabs/dataleon-ruby/commit/4725f2275092fb357b370758d5476f9256b8645f))
* **api:** manual updates ([91ddf7e](https://github.com/dataleonlabs/dataleon-ruby/commit/91ddf7e0118b9c83d25f94c9352eb6c8dfbd3f2c))


### Bug Fixes

* bump sorbet version and fix new type errors from the breaking change ([aea5af1](https://github.com/dataleonlabs/dataleon-ruby/commit/aea5af14130f20f6bc007a1a1acb9e24a27064a9))


### Chores

* add json schema comment for rubocop.yml ([0649888](https://github.com/dataleonlabs/dataleon-ruby/commit/0649888bfbfa22db769a5334c4807633eea1cee3))
* collect metadata from type DSL ([55a6e7b](https://github.com/dataleonlabs/dataleon-ruby/commit/55a6e7b6d0b88f8099dbad479f0b40f90f9382a4))
* **internal:** codegen related update ([2cebfb3](https://github.com/dataleonlabs/dataleon-ruby/commit/2cebfb3b79566f5be976dd041c68a49cfbc9e24f))
* **internal:** update comment in script ([6f351c5](https://github.com/dataleonlabs/dataleon-ruby/commit/6f351c59c5ee7055b8f7151e032309c20d5e6b61))
* update @stainless-api/prism-cli to v5.15.0 ([de93c62](https://github.com/dataleonlabs/dataleon-ruby/commit/de93c6281e8ebe1ead9a1705017e11c7b46a4358))

## 0.0.1-alpha.1 (2025-08-05)

Full Changelog: [v0.0.1-alpha.0...v0.0.1-alpha.1](https://github.com/dataleonlabs/dataleon-ruby/compare/v0.0.1-alpha.0...v0.0.1-alpha.1)

### Features

* **api:** api update ([4fbd229](https://github.com/dataleonlabs/dataleon-ruby/commit/4fbd229218ff4ac84ef6b2a106d7418dcaad70f1))
* **api:** api update ([ebb92ab](https://github.com/dataleonlabs/dataleon-ruby/commit/ebb92ab84e34679223ac735fdac5282da39ba5a0))
* **api:** api update ([d20db7e](https://github.com/dataleonlabs/dataleon-ruby/commit/d20db7e939a6163e88ab056c04f1a38a65e11cff))
* **api:** api update ([2c40287](https://github.com/dataleonlabs/dataleon-ruby/commit/2c40287e148b21848d78834ddde5b6a2648f558f))
* **api:** manual updates ([d2586d4](https://github.com/dataleonlabs/dataleon-ruby/commit/d2586d4691891b0ad83c7ffd2d59a7512a971174))
* **api:** manual updates ([2f2cd40](https://github.com/dataleonlabs/dataleon-ruby/commit/2f2cd40bf75dc2194fa65c03d3d179b1f3a97998))
* **api:** manual updates ([75e26d7](https://github.com/dataleonlabs/dataleon-ruby/commit/75e26d72a0abd7b646bb06a052e9077edca2e77d))


### Chores

* configure new SDK language ([3505532](https://github.com/dataleonlabs/dataleon-ruby/commit/3505532f7be7c6b13b8c5f6dfbaacde8c0f30c46))
* update SDK settings ([240f966](https://github.com/dataleonlabs/dataleon-ruby/commit/240f966205413ca59902b238e23451f89fbb6ead))
