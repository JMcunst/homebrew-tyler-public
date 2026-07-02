class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.601.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.601.0/tyler_0.601.0_darwin_arm64.tar.gz"
      sha256 "e5080e802a42147b62964a43b97134efb896a9b114359f71641c4ac6acebe59e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.601.0/tyler_0.601.0_darwin_amd64.tar.gz"
      sha256 "8286212d32235a58377e250c6c75d08c208817e9025b77bd2fcd569d597f17b9"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
