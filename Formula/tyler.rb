class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.75.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.75.0/tyler_0.75.0_darwin_arm64.tar.gz"
      sha256 "2268c4b0f844d428d1ab63a023207add1fef16ccd414ebc295669dfd9ca3fe2c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.75.0/tyler_0.75.0_darwin_amd64.tar.gz"
      sha256 "ab35013049cb36f282abb274269da9446c2cb537fc4c6860bfb511f945320c98"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
