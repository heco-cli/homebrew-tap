class Heco < Formula
  desc "The HMOS app development tool built for you and AI"
  homepage "https://github.com/heco-cli/heco"
  version "0.1.0"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/heco-cli/heco/releases/download/v#{version}/heco-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5ac863c1d2cc7185dd571d2463439908687a3d6ddd724088e42888a276be3dba" # MAC_INTEL
    elsif Hardware::CPU.arm?
      url "https://github.com/heco-cli/heco/releases/download/v#{version}/heco-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f7cfb3234802309d4ee9e5269c29dac6597798100f2307fa61d5b0a691e2c09a" # MAC_ARM
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
