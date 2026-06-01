class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.114.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.114.0/tyler_0.114.0_darwin_arm64.tar.gz"
      sha256 "0969eb26a4dd9ece37b02a1bcbb05c2d64c2e5ba8f870ead4d8ee9e04941fc2b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.114.0/tyler_0.114.0_darwin_amd64.tar.gz"
      sha256 "b189a7ecd5e940d106182afee1546a40c91aa7b73623f76ec84cd13859b5cae9"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
