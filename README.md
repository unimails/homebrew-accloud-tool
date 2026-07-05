# Homebrew Tap for UniMail Client

This repository provides a Homebrew tap for installing `unimail-client` on macOS.

## Package

- Name: `unimail-client`
- Current version: `0.0.2`
- Upstream repository: <https://github.com/unimails/unimail-client>
- Supported macOS architectures: Apple Silicon (`arm64`) and Intel (`amd64`)

## Installation

This repository is hosted as `unimails/homebrew-accloud-tool`, so the Homebrew tap name is `unimails/accloud-tool`. Add the tap and install the client with:

```sh
brew tap unimails/accloud-tool
brew install unimail-client
```

Homebrew maps a repository named `homebrew-example` under the `my-org` account to the tap name `my-org/example`; the `homebrew-` prefix is omitted in the tap command.

## Upgrade

```sh
brew update
brew upgrade unimail-client
```

## Uninstall

```sh
brew uninstall unimail-client
brew untap unimails/accloud-tool
```

## Formula

The formula is defined in [Formula/unimail-client.rb](Formula/unimail-client.rb). It downloads the official `v0.0.2` release archive from GitHub and selects the matching macOS archive for the local CPU architecture.

Release checksums are read from the upstream `.sha256` files:

- `unimail-client_darwin_arm64.tar.gz.sha256`
- `unimail-client_darwin_amd64.tar.gz.sha256`

## Local Testing

From this repository, you can validate and test the formula locally:

```sh
ruby -c Formula/unimail-client.rb
brew install --formula ./Formula/unimail-client.rb
brew test unimail-client
```

## Updating the Version

When a new upstream release is available:

1. Update `version` in [Formula/unimail-client.rb](Formula/unimail-client.rb).
2. Update both download URLs to the new release tag.
3. Replace the `sha256` values with the checksums from the new `.sha256` files.
4. Run the local testing commands above.

## License

This tap is distributed under the BSD 3-Clause License. See [LICENSE](LICENSE).
