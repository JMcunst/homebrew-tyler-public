class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.549.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.549.0/tyler_0.549.0_darwin_arm64.tar.gz"
      sha256 "14b16b4e63e19fc2c96953d34058b35d4aacb2f551a76e096790f392344dd905"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.549.0/tyler_0.549.0_darwin_amd64.tar.gz"
      sha256 "46fb83d6a8f58de62fdc95f3103f9402ec11d5965aa0b1deb2f8c9497f45bb56"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
