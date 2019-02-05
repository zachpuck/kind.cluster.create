# Problem statement

creates a [kind](https://github.com/kubernetes-sigs/kind) (kubernetes in docker) cluster if one does not already exist
and saves the kind kubeconfig to the current directory.

# Format

the op uses [![opspec 0.1.5](https://img.shields.io/badge/opspec-0.1.5-brightgreen.svg?colorA=6b6b6b&colorB=fc16be)](https://opspec.io/0.1.5) definition format

# Example usage

## Install

```shell
opctl op install github.com/zachpuck/kind.cluster.create#0.1.0
```

## Run

```
opctl run github.com/zachpuck/kind.cluster.create#0.1.0
```

## Compose

```yaml
op:
  ref: github.com/zachpuck/kind.cluster.create#0.1.0
  inputs:
    name:
    dockerSocket:
    # params w/ defaults
    configDir:
  outputs:
    kubeConfig:
```
