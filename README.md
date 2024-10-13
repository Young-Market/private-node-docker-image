# YM Private Node

The image is useful for developing dApps and other smart contracts on Waves blockchain. Uses actual Mainnet version by default.

## Getting started

To run the node,\
`docker run -d --name ym-private-node -p 6869:6869 wavesplatform/waves-private-node`

To view node API documentation, open http://localhost:6869/

### Use Stagenet version

If you would like to try Stagenet version of Waves Node, then use docker tag `stagenet`:\
`docker run -d --name ym-private-node -p 6869:6869 wavesplatform/waves-private-node:stagenet`

## Preserve blockchain state

If you want to keep the blockchain state, then just stop the container instead of killing it, and start it again when needed:\
`docker stop ym-private-node`
`docker start ym-private-node`

## Configuration details

The node is configured with:

- faster generation of blocks (**10 sec** interval)
- all features pre-activated
- custom chain id - **R**
- api_key `waves-private-node`
