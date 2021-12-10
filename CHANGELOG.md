# Changelog
## v1.0.0
Improvement
* [\#456](https://github.com/binance-chain/bsc/pull/456) git-flow support lint, unit test, and integration test
* [\#449](https://github.com/binance-chain/bsc/pull/449) cache bitmap and change the cache type of GetCode
* [\#454](https://github.com/binance-chain/bsc/pull/454) fix cache key do not have hash func
* [\#446](https://github.com/binance-chain/bsc/pull/446) parallel bloom calculation
* [\#442](https://github.com/binance-chain/bsc/pull/442) ignore empty tx in GetDiffAccountsWithScope 
* [\#426](https://github.com/binance-chain/bsc/pull/426) add block proccess backoff time when validator is not in turn and received in turn block
* [\#398](https://github.com/binance-chain/bsc/pull/398) ci pipeline for release page


BUGFIX
* [\#446](https://github.com/binance-chain/bsc/pull/446) fix concurrent write of subfetcher
* [\#444](https://github.com/binance-chain/bsc/pull/444) fix blockhash not correct for the logs of system tx receipt
* [\#409](https://github.com/binance-chain/bsc/pull/409) fix nil point in downloader
* [\#408](https://github.com/binance-chain/bsc/pull/408) core/state/snapshot: fix typo


FEATURES
* [\#431](https://github.com/binance-chain/bsc/pull/431) Export get diff accounts in block api 
* [\#412](https://github.com/binance-chain/bsc/pull/412) add extension in eth protocol handshake to disable tx broadcast
* [\#376](https://github.com/binance-chain/bsc/pull/376) implement diff sync
