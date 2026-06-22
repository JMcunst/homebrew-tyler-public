class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.480.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.480.0/tyler_0.480.0_darwin_arm64.tar.gz"
      sha256 "ad530cf8927a0819e902dec4b28c5857848237c5ba868f84c86563e701bde40c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.480.0/tyler_0.480.0_darwin_amd64.tar.gz"
      sha256 "86e4302af5b6a90d655f9b253f8efc2336a09a08f63a8c0bcccbb8815854bfb0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
