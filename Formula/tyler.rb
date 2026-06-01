class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.122.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.122.0/tyler_0.122.0_darwin_arm64.tar.gz"
      sha256 "dd05ddb2b96266de9ad622d0688391a0a38ef90eb4e905942f4305c45f6745e7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.122.0/tyler_0.122.0_darwin_amd64.tar.gz"
      sha256 "ba00e12c7891c897423833531f04b767ac01d52758917f072424e8146ba1415a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
