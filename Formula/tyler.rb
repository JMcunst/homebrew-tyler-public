class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.532.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.532.0/tyler_0.532.0_darwin_arm64.tar.gz"
      sha256 "a36a4b9cd028311aa5539ec669b8b5ad48fd7a0d895f89f9d97f55933792952f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.532.0/tyler_0.532.0_darwin_amd64.tar.gz"
      sha256 "24e1ff3e4c4908c050edf1c0f21952413a9763381f1e1d62cb760b10eadac394"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
