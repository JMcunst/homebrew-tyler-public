class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.233.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.233.0/tyler_0.233.0_darwin_arm64.tar.gz"
      sha256 "9eadd4e46972008a20aba1b7f9c68ba344bf279febae5d963659ca8167035308"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.233.0/tyler_0.233.0_darwin_amd64.tar.gz"
      sha256 "bbef8f6aa9e5fbcf27aadd40f15961c4ce24d0f01f49ebe034f478e51e3ca9cc"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
