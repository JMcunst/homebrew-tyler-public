class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.9.4"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.4/tyler_0.9.4_darwin_arm64.tar.gz"
      sha256 "f2e04b0f409695d3a27103c6d143026a99bfc06adb703e1f317a10cc22fe6512"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.4/tyler_0.9.4_darwin_amd64.tar.gz"
      sha256 "f2deda18aae71c7604b4ebba0d4d59e8f639f949f5f0f96caa6a0b3b0ac1016a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
