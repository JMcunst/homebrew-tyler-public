class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.6.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.6.0/tyler_0.6.0_darwin_arm64.tar.gz"
      sha256 "1086302588d1c62813e60fab632f8178e8783731c0cb5b020d305be8697f7a09"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.6.0/tyler_0.6.0_darwin_amd64.tar.gz"
      sha256 "83941559339e711581285eb73587f68b8e0280b39a59383caca31340416e2153"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
