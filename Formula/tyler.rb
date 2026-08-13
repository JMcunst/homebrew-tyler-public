class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.120.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.120.0/tyler_2.120.0_darwin_arm64.tar.gz"
      sha256 "0efe1e8583fc0325f89facbf9b793e353d2c0e024adef46fce868288fd658b48"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.120.0/tyler_2.120.0_darwin_amd64.tar.gz"
      sha256 "027fe83cbb83fb2dd8956ac5d25711c2777df190fd1a03b967797d0aa136ba57"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
