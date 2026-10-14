# homebrew-tap
Astra 的 Homebrew 安装源

## AstraGit

独立 Git 工作台，支持一个项目内的多个仓库与 AI 提交说明。

```sh
brew install --cask skylight-f/tap/astragit
brew upgrade --cask skylight-f/tap/astragit
```

支持 Apple Silicon 和 Intel，要求 macOS 13 或更高版本。AstraGit 的发布来源为 [skylight-f/AstraGit](https://github.com/skylight-f/AstraGit/releases)，与 Astra 使用不同的应用身份和数据目录。

AstraGit 应用内更新识别 Homebrew 安装后继续通过 brew 升级。Cask 使用版本固定的下载地址及每个架构的 SHA-256，不关闭 macOS 安全检查。

卸载：`brew uninstall --cask skylight-f/tap/astragit`；主动增加 `--zap` 才删除 AstraGit 的本地配置。
