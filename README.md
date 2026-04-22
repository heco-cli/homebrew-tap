# Heco Tap

这是 `heco` (HMOS Ecosystem CLI) 的包管理分发仓库。支持 macOS（通过 Homebrew）和 Windows（通过 Scoop）。

`heco` 是深度整合了 `hvigor`、`hdc` 等 DevEco Studio 工具链的命令行工具，方便鸿蒙应用开发者和 AI 调用。

详细信息和源码请访问：[https://github.com/heco-cli/heco](https://github.com/heco-cli/heco)

## 🍏 macOS 安装 (Homebrew)

支持 macOS (Intel / Apple Silicon)。

```bash
# 添加 Tap 仓库
brew tap heco-cli/tap

# 安装 heco
brew install heco
```

**更新 heco：**
```bash
brew upgrade heco
```

## 🪟 Windows 安装 (Scoop)

支持 Windows (x86_64 / arm64)。本仓库同时也作为一个 Scoop Bucket 提供服务。

```powershell
# 添加 Scoop bucket
scoop bucket add heco-cli https://github.com/heco-cli/homebrew-tap.git

# 安装 heco
scoop install heco
```

**更新 heco：**
```powershell
scoop update heco
```

---

> **注意：** 
> 1. 上述安装命令中的 `heco-cli/tap` 与 `heco-cli/homebrew-tap.git` 假定您将此仓库推送到 `https://github.com/heco-cli/homebrew-tap`。
> 2. 当前版本 `heco` 处于快速迭代阶段，请随时保持更新以获取最新特性。
