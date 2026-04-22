class HecoATbeta < Formula
  desc "The HMOS app development tool built for you and AI"
  homepage "https://github.com/heco-cli/heco"
  version "0.0.1"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/heco-cli/heco/releases/download/v#{version}/heco-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_MAC_INTEL_SHA256" # MAC_INTEL
    elsif Hardware::CPU.arm?
      url "https://github.com/heco-cli/heco/releases/download/v#{version}/heco-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_MAC_ARM_SHA256" # MAC_ARM
    end
  end


  def install
    bin.install "heco"

    # 生成自动补全脚本
    generate_completions_from_executable(bin/"heco", "completion")
  end

  test do
    system "#{bin}/heco", "--help"
  end
end
