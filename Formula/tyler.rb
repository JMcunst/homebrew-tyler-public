class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.373.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.373.0/tyler_0.373.0_darwin_arm64.tar.gz"
      sha256 "68848be45f05657191a5c786d7bf064f1655fcc7ce6cc367e0770e4a66900635"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.373.0/tyler_0.373.0_darwin_amd64.tar.gz"
      sha256 "2b7f0b8ed4d87a7a54f0534d080dd2a20d85758e4a564ec056892ede9e27983e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
