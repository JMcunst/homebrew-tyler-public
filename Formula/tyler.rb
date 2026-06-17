class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.417.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.417.0/tyler_0.417.0_darwin_arm64.tar.gz"
      sha256 "ac98de6419a907697e6c149883637e8010ebb9f601e62e30ea2aefa235d26efe"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.417.0/tyler_0.417.0_darwin_amd64.tar.gz"
      sha256 "5d6bf5c9b7b740362706a47a1d4a241b7767cfe746e51b799158f7c0738bc1b6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
