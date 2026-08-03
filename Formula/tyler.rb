class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.87.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.87.0/tyler_2.87.0_darwin_arm64.tar.gz"
      sha256 "58f255da2edc27a66f609096393e6a38d0807cacd287945f5407a09bfd131c00"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.87.0/tyler_2.87.0_darwin_amd64.tar.gz"
      sha256 "bf17195451b0973e83ffe0f5f7bce229978635c2c905a91b4ca51ca2c639f935"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
