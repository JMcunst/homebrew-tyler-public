class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.608.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.608.0/tyler_0.608.0_darwin_arm64.tar.gz"
      sha256 "a676b96f6419327a35b8d3d0d56f1f3c33106c5f299b9d763c3e74dedeca479a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.608.0/tyler_0.608.0_darwin_amd64.tar.gz"
      sha256 "b8da2cecd4581abeeee675f26993c84fd5055b05e1fa9d7d62d1534675caf3f5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
