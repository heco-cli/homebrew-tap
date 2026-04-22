class Heco < Formula
  desc "The HMOS app development tool built for you and AI"
  homepage "https://github.com/heco-cli/heco"
  version "0.0.1"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/heco-cli/heco/releases/download/v#{version}/heco-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bf814c397cbc646dc2778e9cf1fb34f08b165f732066e01814431c38610856b8" # MAC_INTEL
    elsif Hardware::CPU.arm?
      url "https://github.com/heco-cli/heco/releases/download/v#{version}/heco-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "11bfc984bb1788d7731556aa7145de0386408dc3d86f8cf1de506697fac25246" # MAC_ARM
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
