class Heco < Formula
  desc "The HMOS app development tool built for you and AI"
  homepage "https://github.com/heco-cli/heco"
  version "0.0.1"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/heco-cli/heco/releases/download/v#{version}/heco-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_MAC_INTEL_SHA256"
    elsif Hardware::CPU.arm?
      url "https://github.com/heco-cli/heco/releases/download/v#{version}/heco-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_MAC_ARM_SHA256"
    end
  end


  def install
    bin.install "heco"

    # 生成自动补全脚本（要求 heco 在当前平台可运行）
    # system "#{bin}/heco", "completion", "bash", ">", "heco.bash"
    # bash_completion.install "heco.bash" => "heco"
    # system "#{bin}/heco", "completion", "zsh", ">", "_heco"
    # zsh_completion.install "_heco"
    
    # 或者使用 Homebrew 内置的方法（前提是 heco 能够正常运行输出补全内容）：
    generate_completions_from_executable(bin/"heco", "completion")
  end

  test do
    system "#{bin}/heco", "--help"
  end
end
