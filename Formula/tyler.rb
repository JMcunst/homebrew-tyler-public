class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.460.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.460.0/tyler_0.460.0_darwin_arm64.tar.gz"
      sha256 "d3c6ae83177e05ae7a6571b994e7c04c755676a597b582221f386ce693dd822d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.460.0/tyler_0.460.0_darwin_amd64.tar.gz"
      sha256 "310205f1a607d1ce0276490f26c0bff19df0c50bfe714badeb00bc565f88d8c2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
