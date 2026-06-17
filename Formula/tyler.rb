class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.410.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.410.0/tyler_0.410.0_darwin_arm64.tar.gz"
      sha256 "1e3125815e96a44fd89c3a1ed5f21892d400897559c3f38701f187aa68a2a9a0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.410.0/tyler_0.410.0_darwin_amd64.tar.gz"
      sha256 "3f61bc6fa20ec52203f2d377c9b228be76cf175fe453d25f9404846d862427c7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
