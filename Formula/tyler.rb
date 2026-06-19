class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.446.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.446.0/tyler_0.446.0_darwin_arm64.tar.gz"
      sha256 "2c8353d41f12589b5ae021783b1efbf3d1aee2ed999b2c2fabf3cc87f42a9f36"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.446.0/tyler_0.446.0_darwin_amd64.tar.gz"
      sha256 "164010fd1de1ca8b193c03147eb8afef823f511da00710ef32c656d599765287"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
