class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.534.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.534.0/tyler_0.534.0_darwin_arm64.tar.gz"
      sha256 "b02e0777a11e36a0d30e61dab236019ff5e2f6cf2ee8c4134eceb629e0b233a1"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.534.0/tyler_0.534.0_darwin_amd64.tar.gz"
      sha256 "deffdfe6704ee417e429e28e226bb47d2e7b02acf54b6c9745edcb2bb9f2a40b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
