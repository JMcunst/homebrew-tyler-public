class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.369.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.369.0/tyler_0.369.0_darwin_arm64.tar.gz"
      sha256 "b8608c03cc03200c16af8ba0c1946c90f929229bcac6a0cd0e43734ee9624eb2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.369.0/tyler_0.369.0_darwin_amd64.tar.gz"
      sha256 "ab3747ca1ac9f42c03f4e499a31e90b1f943725e3fe7f31ca36e4111ef72c8f9"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
