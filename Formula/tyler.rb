class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.50.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.50.0/tyler_0.50.0_darwin_arm64.tar.gz"
      sha256 "651458edb6c208b13a58e79f9c90ece24abdab3fcb9e5c35ffa92ceafd07bf2d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.50.0/tyler_0.50.0_darwin_amd64.tar.gz"
      sha256 "27cfca8061c83f141c36a39e14aa5476dd9c8f1f43f9ac3366c2a624b2efd19b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
