class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.7.2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.7.2/tyler_0.7.2_darwin_arm64.tar.gz"
      sha256 "59cfd508b233efe969e7b8ff34b1bb121b6fe003023b06a87b63ca886bb454b2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.7.2/tyler_0.7.2_darwin_amd64.tar.gz"
      sha256 "bb5515fccc57640c25e7a27f887e21ce9d7b89c1267fa2e57247b2c32a0439c5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
