class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.396.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.396.0/tyler_0.396.0_darwin_arm64.tar.gz"
      sha256 "87d932dd97be84737180ad2b510e2f9c9b917682d116a1e3b03d90dcdce5c19b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.396.0/tyler_0.396.0_darwin_amd64.tar.gz"
      sha256 "ec6cc93e679dd1a45e8e589fe50b1ca0d57a56ce730d6ff049edb8ad1a9395dc"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
