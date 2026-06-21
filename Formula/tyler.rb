class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.461.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.461.0/tyler_0.461.0_darwin_arm64.tar.gz"
      sha256 "25bb3a4be4b5ebe5e11c540ecf3acd5a72593759540eab0b77a879f40242925a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.461.0/tyler_0.461.0_darwin_amd64.tar.gz"
      sha256 "02b8aaa3eb509390cb527e57e7eb134a1ff5790b0b2ea7e60eb6c45826e8ac48"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
