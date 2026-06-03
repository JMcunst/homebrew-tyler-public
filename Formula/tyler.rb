class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.180.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.180.0/tyler_0.180.0_darwin_arm64.tar.gz"
      sha256 "3d0472bbbcd8bf3a51fe95ac948d78102251e32335925598b5f8dbe2bac53e41"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.180.0/tyler_0.180.0_darwin_amd64.tar.gz"
      sha256 "a91c8cd4a0b53fdaf8ecafa5019f7003c940f1fd6c4509c6f158b4a7f7bacf91"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
