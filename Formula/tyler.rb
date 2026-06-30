class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.585.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.585.0/tyler_0.585.0_darwin_arm64.tar.gz"
      sha256 "97159fa7b641dc3312c4c57f49e380c6f7ab24614b7939721b55a88f6a32b60d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.585.0/tyler_0.585.0_darwin_amd64.tar.gz"
      sha256 "e4386a3cf09b79fdc98c78f25526a138644826d99043ca49c5aaa673f4bd858a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
