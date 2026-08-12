class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.118.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.118.0/tyler_2.118.0_darwin_arm64.tar.gz"
      sha256 "252f97b9c6b650cc2bef33517d412c50898f50cfa3dc56d7d656af04f1e56882"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.118.0/tyler_2.118.0_darwin_amd64.tar.gz"
      sha256 "d0108d699dd785db81f26bf954b5e644ef58dbae6300822eef613ad9d49cf5cd"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
