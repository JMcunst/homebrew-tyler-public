class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.274.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.274.0/tyler_0.274.0_darwin_arm64.tar.gz"
      sha256 "58bb2b8f1a0869280abe387637267056d97d47a6271ee76be8a6d84368d4e9dd"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.274.0/tyler_0.274.0_darwin_amd64.tar.gz"
      sha256 "5e4604dd367ea04b87c92a97b7297fcaab11d27b1d3678f2ca7df8febb613a6a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
