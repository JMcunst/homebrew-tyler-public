class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.108.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.108.0/tyler_2.108.0_darwin_arm64.tar.gz"
      sha256 "2aa39a2b70b30c3d4ff06d1b8750adfd827c9f9f2f794bdb197a1005522f6c4b"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.108.0/tyler_2.108.0_darwin_amd64.tar.gz"
      sha256 "eea9a54ebe68b7a2c0b28cdf8154035588adc77da8feeab5cdc0f9bfb0bcda92"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
