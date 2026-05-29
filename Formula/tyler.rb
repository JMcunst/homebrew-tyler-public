class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.88.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.88.0/tyler_0.88.0_darwin_arm64.tar.gz"
      sha256 "461461a732741a05e113b32d022e33303f7acdbae3bb69b73783c70e9ce3b895"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.88.0/tyler_0.88.0_darwin_amd64.tar.gz"
      sha256 "d8d928398540413f2da9cb51e4f5e6d62625c37cf8c565f78d9ca075a387ad9a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
