class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.166.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.166.0/tyler_0.166.0_darwin_arm64.tar.gz"
      sha256 "a581350380412ff62bbff6a205493c9920a2cfce36812d284b92dd9289068b0c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.166.0/tyler_0.166.0_darwin_amd64.tar.gz"
      sha256 "0fc4ffe6ead83b7f42a58731b5b0b70fe097d131954ce5bd86b79159fe81238b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
