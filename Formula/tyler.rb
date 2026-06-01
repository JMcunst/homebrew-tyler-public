class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.100.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.100.0/tyler_0.100.0_darwin_arm64.tar.gz"
      sha256 "bdb6aa8071ae87cdf0f9a968deeb7489a3ed2a528c13e89862137ac13e8969f0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.100.0/tyler_0.100.0_darwin_amd64.tar.gz"
      sha256 "7c69e0840e25314a72de257413aab3d3713fe3a769b617acb52a0d57282139f2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
