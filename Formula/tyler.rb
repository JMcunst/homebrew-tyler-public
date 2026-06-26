class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.547.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.547.0/tyler_0.547.0_darwin_arm64.tar.gz"
      sha256 "806a1dc1e12826493f3d4a48476b7fd52bd8860ad8e459431b06b143a4013980"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.547.0/tyler_0.547.0_darwin_amd64.tar.gz"
      sha256 "ad3d454d70a454b1c703c8de818759f24e1c954a3a394d8bd08f96b0a4894610"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
