class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.196.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.196.0/tyler_0.196.0_darwin_arm64.tar.gz"
      sha256 "d8ee896a49105228c848c7cc96e1498484eb00aa416fcb2416a77fa623ade14c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.196.0/tyler_0.196.0_darwin_amd64.tar.gz"
      sha256 "c83db748b4919bd3e921342e4335bfc72ec3d8c00e30911df6416ec8dd5e9f68"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
