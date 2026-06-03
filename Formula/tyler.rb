class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.186.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.186.0/tyler_0.186.0_darwin_arm64.tar.gz"
      sha256 "8629bd0f426b3c25f675f904d713c8012c1b01e729877b02857c1f6bd8f3c35b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.186.0/tyler_0.186.0_darwin_amd64.tar.gz"
      sha256 "24d0b011daf12f045676552965cd8e40942532c378c6630b86ea87548fd06b25"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
