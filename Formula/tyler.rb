class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.173.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.173.0/tyler_0.173.0_darwin_arm64.tar.gz"
      sha256 "1a1d11ef5353c73c6852b08f737002e998c0b0a614cce5f2da2f5454d7d7e36d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.173.0/tyler_0.173.0_darwin_amd64.tar.gz"
      sha256 "9b55b51ad3fe439d8b027910d4201ac1c8731f5787172044f89e1d091198f6a5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
