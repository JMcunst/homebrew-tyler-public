# Homebrew Tyler Public Tap

Public Homebrew tap for the Tyler core CLI binary.

## Install (after first public release)

> The Formula will be generated and updated by the agent-tyler private release workflow in a follow-up phase. Once the first public release lands here:

```sh
brew tap JMcunst/tyler-public
brew install tyler

# or, namespace-explicit:
brew install JMcunst/tyler-public/tyler
```

## What this tap does

This tap publishes a single Formula that points at the Tyler core binary releases hosted in [`JMcunst/tyler-core-dist`](https://github.com/JMcunst/tyler-core-dist). The Formula contents are generated automatically from the Tyler private release pipeline; please do not edit `Formula/tyler.rb` by hand here.

## What this tap does **not** do

- It does not host source code (the source code is private)
- It does not host private connector packs or vault data
- It does not host any tokens, signing keys, or other secrets

## Try Tyler without connecting any private source

After install:

```sh
tyler --help
tyler command list
```

A demo command pack ships in [`tyler-core-dist/examples/command-packs/demo.json`](https://github.com/JMcunst/tyler-core-dist/tree/main/examples/command-packs). Save it locally and try:

```sh
tyler command list --pack /path/to/demo.json
tyler run demo.notes.summary --pack /path/to/demo.json --dry-run
```

## License

The `tyler` binary is distributed under the [Tyler CLI Public Binary Use License](https://github.com/JMcunst/tyler-core-dist/blob/main/LICENSE). This is a binary-use license, not an open-source license. The source code remains private.

## Reporting issues

For Homebrew Formula issues (download failures, sha256 mismatch, etc.), please open issues here. For Tyler binary or behaviour issues, please open issues against [`JMcunst/tyler-core-dist`](https://github.com/JMcunst/tyler-core-dist) instead.
