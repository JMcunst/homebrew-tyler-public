class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.506.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.506.0/tyler_0.506.0_darwin_arm64.tar.gz"
      sha256 "d967df2ebf644694fa93981e6bd91a2157f31c6b2b74cd0ca97dab8ed3216d63"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.506.0/tyler_0.506.0_darwin_amd64.tar.gz"
      sha256 "41d3c2398e586fae1d811ac5d00ee184d84ea05783e462f731639cd769c8a091"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
