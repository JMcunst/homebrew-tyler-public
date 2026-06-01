class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.109.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.109.0/tyler_0.109.0_darwin_arm64.tar.gz"
      sha256 "d1e5526573ee4926e345f0217d80746d2bcf43fa4d41a2ce73104ff90bbd2c78"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.109.0/tyler_0.109.0_darwin_amd64.tar.gz"
      sha256 "b10e8443bfdfcb5d2b9e481613b55ee00d44b03e24cc85653df69dabb2e16b87"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
