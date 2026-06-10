class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.265.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.265.0/tyler_0.265.0_darwin_arm64.tar.gz"
      sha256 "4c11b1c0593518ad9a09ca2803a620046fc19dc42830025197979a8cb38cbc47"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.265.0/tyler_0.265.0_darwin_amd64.tar.gz"
      sha256 "107da750a3692a548f1f0f499cf77432e3c812d2681080070f0817418189e24f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
