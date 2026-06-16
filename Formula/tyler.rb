class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.367.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.367.0/tyler_0.367.0_darwin_arm64.tar.gz"
      sha256 "24d7c3df6bd6605e74dad6829bd4a0ac7105c6cb8b8ddd13e80e074bad480bfd"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.367.0/tyler_0.367.0_darwin_amd64.tar.gz"
      sha256 "710d81dd4719a24d88b3ed74e96648bd2d72d3b91017c12a795b2a02373ded4d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
