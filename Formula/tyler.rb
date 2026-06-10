class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.268.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.268.0/tyler_0.268.0_darwin_arm64.tar.gz"
      sha256 "9bee188bf6c0138e34e7ec7718d5fcb6f19b920e8315ce5a6b9f1c0c31e53717"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.268.0/tyler_0.268.0_darwin_amd64.tar.gz"
      sha256 "b0533250cfb2a0479c0d04c15c2d114f6c8be0de6cd4b9c4e80582b91b2ff192"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
