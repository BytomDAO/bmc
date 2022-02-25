Bytom Sidechain
======

[![Build Status](https://travis-ci.org/Bytom/bytom.svg)](https://travis-ci.org/Bytom/bytom) [![AGPL v3](https://img.shields.io/badge/license-AGPL%20v3-brightgreen.svg)](./LICENSE)

**Official golang implementation of the Bytom Sidechain protocol.**

Automated builds are available for stable releases and the unstable master branch. Binary archives are published
at https://github.com/Bytom/bmc/releases.

## What is Bytom Sidechain?

Bytom sidechain is a high-performance layer 2 scalability solution that is compatible with EVM (Ethereum Virtual
Machine) and OFMF (Open Federation Management Framework) cross-chain.

## Key Features

- High-performance: High speed of transaction and low transaction fee.
- EVM-compatible: Supports Ethereum developing ecosystem and tools.
- OFMF Cross-chain: Supports cross-chain with Bytom, Bitcoin and Ethereum.

## Building from source

### Requirements

- [Go](https://golang.org/doc/install) version 1.8 or higher, with `$GOPATH` set to your preferred directory

### Installation

Ensure Go with the supported version is installed properly:

```bash
$ go version
$ go env GOROOT GOPATH
```

- Get the source code

```shell
git clone https://github.com/Bytom/bmc.git $GOPATH/src/github.com/bytom/bmc
```

- Build source code

```shell
cd $GOPATH/src/github.com/bytom/bmc
make geth 
```

## Executables

|  Command   | Description                                                  |
| :--------: | ------------------------------------------------------------ |
| **`geth`** | Main Bytom Side Chain client binary. It is the entry point into the BMC network，capable of running as a full node (default), archive node (retaining all historical state) or a light node (retrieving data live). It has the same and more RPC and other interface as go-ethereum and can be used by other processes as a gateway into the BMC network via JSON RPC endpoints exposed on top of HTTP, WebSocket and/or IPC transports. `geth --help` and the [CLI page](https://geth.ethereum.org/docs/interface/command-line-options) for command line options. |

## Running BMC

### Download

Download [testnet.zip](https://github.com/Bytom/bmc/releases/download/v.1.0.0/testnet.zip) or [mainnet.zip]()(todo...)

### Init

go to ```/bmc-main/build/bin``` file

```shell
geth  --datadir {{datadir}}  init genesis.json
```

### Start

```shell
geth --config config.toml --datadir {{datadir}}  --cache 8000  --txlookuplimit 0
```

### Check the Node

```shell
geth attach /{datadir}/node/geth.ipc

>eth.blockNumber
13872
```

### Connect

Connect BMC network with MetaMask

|                 | Mainnet                      | Testnet                      | 
|:----------------|------------------------------|:-----------------------------|
| Network Name    | BMC                          | BMC Testnet                  |
| Chain ID        | 188                          | 189                          |
| RPC URL         | https://mainnet.bmcchain.com | https://testnet.bmcchain.com |
| Currency Symbol | BTM                          | BTM                          |

### Explorer

- Mainnet Explorer: https://bmc.blockmeta.com
- Testnet Explorer: https://bmctestnet.blockmeta.com

## License

The bmc library (i.e. all code outside of the `cmd` directory) is licensed under the
[GNU Lesser General Public License v3.0](https://www.gnu.org/licenses/lgpl-3.0.en.html), also included in our repository
in the `COPYING.LESSER` file.

The bmc binaries (i.e. all code inside of the `cmd` directory) is licensed under the
[GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html), also included in our repository in
the `COPYING` file.

