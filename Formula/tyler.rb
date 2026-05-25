class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.31.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.31.0/tyler_0.31.0_darwin_arm64.tar.gz"
      sha256 "18eeb4093d5e4e064e3adf3f028bf72822399a1f767e887cf623c8c5a52e29a3"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.31.0/tyler_0.31.0_darwin_amd64.tar.gz"
      sha256 "487af64b89d2063106bf42ff48cdad686c4f20b3f6ec0e7cc04ffe9ee99e0107"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
