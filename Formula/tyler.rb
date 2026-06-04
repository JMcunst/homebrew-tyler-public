class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.216.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.216.0/tyler_0.216.0_darwin_arm64.tar.gz"
      sha256 "57456fc592746996911d54e6172704da07487b4a604d96b7a9546dd42e83d240"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.216.0/tyler_0.216.0_darwin_amd64.tar.gz"
      sha256 "b73ea7bcdae1ddea172669d7378ae2d9232c81764ecad965ca92ee32788b355b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
