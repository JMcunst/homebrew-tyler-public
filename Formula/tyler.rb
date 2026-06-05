class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.234.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.234.0/tyler_0.234.0_darwin_arm64.tar.gz"
      sha256 "05310c441226d31158db2f69f3add51de6a840c2054025a40ab3ad77896c51b6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.234.0/tyler_0.234.0_darwin_amd64.tar.gz"
      sha256 "ad7023f2851d494c441ea590d4803536d236c9fda19e78644c345007d13d2f80"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
