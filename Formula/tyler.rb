class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.358.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.358.0/tyler_0.358.0_darwin_arm64.tar.gz"
      sha256 "3788dec078c4ec5c07f5359f5d82bc6afe3ca1e1435a9d1b47f017fcc8551cc7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.358.0/tyler_0.358.0_darwin_amd64.tar.gz"
      sha256 "968f6dfd730dca1cdc89f87f7a93e43600b87c9c044c7480510a6a61144588a6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
