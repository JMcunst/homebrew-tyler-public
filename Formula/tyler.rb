class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.533.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.533.0/tyler_0.533.0_darwin_arm64.tar.gz"
      sha256 "5d6769c862be1b2a696a8db9bc16ce32e007cf989e8a923574127c24a46627d2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.533.0/tyler_0.533.0_darwin_amd64.tar.gz"
      sha256 "c7e9a5610e1833c56aabe3ec132aba1f99213a9cf1b792068b05c57e0d3ed0e4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
