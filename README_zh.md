# UniMail Client 的 Homebrew Tap

这个仓库提供用于在 macOS 上安装 `unimail-client` 的 Homebrew tap。

## 软件信息

- 名称：`unimail-client`
- 当前版本：`0.0.2`
- 上游开源仓库：<https://github.com/unimails/unimail-client>
- 支持的 macOS 架构：Apple Silicon (`arm64`) 和 Intel (`amd64`)

## 安装

这个仓库地址是 `unimails/homebrew-accloud-tool`，所以对应的 Homebrew tap 名称是 `unimails/accloud-tool`。可以使用下面的命令添加 tap 并安装：

```sh
brew tap unimails/accloud-tool
brew install unimail-client
```

Homebrew 会把 `my-org/homebrew-example` 这样的仓库映射为 `my-org/example`，也就是在 tap 命令里省略仓库名中的 `homebrew-` 前缀。

## 升级

```sh
brew update
brew upgrade unimail-client
```

## 卸载

```sh
brew uninstall unimail-client
brew untap unimails/accloud-tool
```

## Formula 说明

Formula 文件位于 [Formula/unimail-client.rb](Formula/unimail-client.rb)。它会从 GitHub 官方 release 下载 `v0.0.2` 的归档包，并根据当前 macOS 的 CPU 架构自动选择对应文件：

- Apple Silicon：`unimail-client_darwin_arm64.tar.gz`
- Intel：`unimail-client_darwin_amd64.tar.gz`

校验值来自上游发布包旁边的 `.sha256` 文件：

- `unimail-client_darwin_arm64.tar.gz.sha256`
- `unimail-client_darwin_amd64.tar.gz.sha256`

## 本地测试

在这个仓库目录下，可以用下面的命令检查并测试 formula：

```sh
ruby -c Formula/unimail-client.rb
brew install --formula ./Formula/unimail-client.rb
brew test unimail-client
```

## 更新版本

上游发布新版本后，通常需要做这些改动：

1. 修改 [Formula/unimail-client.rb](Formula/unimail-client.rb) 里的 `version`。
2. 把两个下载地址更新到新的 release tag。
3. 使用新的 `.sha256` 文件内容替换 `sha256` 值。
4. 重新运行本地测试命令。

## 许可证

这个 tap 使用 BSD 3-Clause License 发布，详见 [LICENSE](LICENSE)。
