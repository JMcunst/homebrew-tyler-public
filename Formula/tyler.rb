class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.176.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.176.0/tyler_0.176.0_darwin_arm64.tar.gz"
      sha256 "e1fdabc9d903a050013d06dbb9ac7469c8bb7e301051a7ef35108b5107dd0d0c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.176.0/tyler_0.176.0_darwin_amd64.tar.gz"
      sha256 "19066ca2bedf50b34d0c38e0056909c8f26e480c8dbd4bd3914efc51d0d546db"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
