class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.11"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.11/tyler_0.3.11_darwin_arm64.tar.gz"
      sha256 "f4a03be74e5f2a45a7255140e957035525127fd912525b9a03abf5f5f0e9a3e0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.11/tyler_0.3.11_darwin_amd64.tar.gz"
      sha256 "6e84d6b7d131de2becaccf2a47daa9a379c10eb9a91d992fb6482cae225220cc"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
