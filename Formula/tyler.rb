class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.66.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.66.0/tyler_0.66.0_darwin_arm64.tar.gz"
      sha256 "08b5eeba96fb272055ee6a416edebfcf1257ab0befc15e3ada42504dc7d25bbf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.66.0/tyler_0.66.0_darwin_amd64.tar.gz"
      sha256 "e14385e6111f8dc1d25fb32ad9c8ca0939e04bebecb728b2179cc6e65bc5874f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
