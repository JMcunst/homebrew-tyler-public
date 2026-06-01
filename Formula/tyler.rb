class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.150.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.150.0/tyler_0.150.0_darwin_arm64.tar.gz"
      sha256 "6f3886295c3847c3d155de020c7d000c23e7c06716f5da8a5b1271c9e8cb51d1"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.150.0/tyler_0.150.0_darwin_amd64.tar.gz"
      sha256 "1785089e6d84ac3b8550b96851961b608a21cf67bcbb002cf20f4c2e26ee158e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
