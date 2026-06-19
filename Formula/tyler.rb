class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.443.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.443.0/tyler_0.443.0_darwin_arm64.tar.gz"
      sha256 "ea0a91d2de94734fe9040c96fe0fae9af02a36c812b6032d6510d0b27bc9561a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.443.0/tyler_0.443.0_darwin_amd64.tar.gz"
      sha256 "b18edf70191084734978aae88ea4eec483e983279cc58a1df87dfac6a83165cb"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
