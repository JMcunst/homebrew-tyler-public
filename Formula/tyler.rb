class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.114.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.114.0/tyler_2.114.0_darwin_arm64.tar.gz"
      sha256 "ac30f4c23a33f21181a0cdc4f04aad21053282da1c8fda452c417cc6d7bc2188"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.114.0/tyler_2.114.0_darwin_amd64.tar.gz"
      sha256 "67ee6b0c2afd3c4c61e4008d05bdfcda8837109d0a18fc77b087ff5b64cb6c98"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
