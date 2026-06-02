class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.162.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.162.0/tyler_0.162.0_darwin_arm64.tar.gz"
      sha256 "e26d721fd73c194a2132a02febf097158ec06b5b0b6b58201ebc3eca708c9408"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.162.0/tyler_0.162.0_darwin_amd64.tar.gz"
      sha256 "311d361ec6ade2eb8c365a5a459b736ca446e0baf2ba58d0e1ba68c64dc32c12"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
