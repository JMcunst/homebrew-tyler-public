class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.578.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.578.0/tyler_0.578.0_darwin_arm64.tar.gz"
      sha256 "be3009e51a1ea7763cd374046048b37677022847d33576dc29760ea7dcc02f3e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.578.0/tyler_0.578.0_darwin_amd64.tar.gz"
      sha256 "3951f2fa479dc16231f0db159eb36596106cde8f95031fb348ad0f8dde36401d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
