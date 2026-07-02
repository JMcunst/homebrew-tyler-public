class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.604.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.604.0/tyler_0.604.0_darwin_arm64.tar.gz"
      sha256 "777be9ccd1b8d8cadca7496f283306253026373167c5234cee516932f5c06f14"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.604.0/tyler_0.604.0_darwin_amd64.tar.gz"
      sha256 "58f183ca60ab41a3303c9e57eb40e9f254b6be0b5d70a7bfb29070388853b99d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
