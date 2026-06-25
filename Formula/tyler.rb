class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.505.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.505.0/tyler_0.505.0_darwin_arm64.tar.gz"
      sha256 "038e17c4a9b3782a326442fb0849be186e71f67c063e9f53718f1d443afe0681"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.505.0/tyler_0.505.0_darwin_amd64.tar.gz"
      sha256 "4e62980df6275a0f034ce2e0a4cf41145c85246f3c9fbe8208148b34bd51171f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
