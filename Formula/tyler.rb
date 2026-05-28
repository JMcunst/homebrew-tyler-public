class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.67.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.67.0/tyler_0.67.0_darwin_arm64.tar.gz"
      sha256 "94be795b7b7cca5334fc79c2febf905b4a07ac4320e568df6f6456e61c097d56"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.67.0/tyler_0.67.0_darwin_amd64.tar.gz"
      sha256 "6b8fdb5d8b3b29a3767511eeee397e4dcef7f294e7379131d4c213cc7db7cf45"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
