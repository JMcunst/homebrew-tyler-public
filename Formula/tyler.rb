class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.360.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.360.0/tyler_0.360.0_darwin_arm64.tar.gz"
      sha256 "4942b4c63158871dd8c38c0b3c4020f56bc639c91246c1377c41edfd6d80ce0b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.360.0/tyler_0.360.0_darwin_amd64.tar.gz"
      sha256 "aaab941633e22afc7428a7a868bcda1c4acc78b8849f03b25862bf1fa3876453"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
