class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.95.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.95.0/tyler_2.95.0_darwin_arm64.tar.gz"
      sha256 "f5afe30406fe136c5e429307d9495f216daadeb9c7cb5ca310547f7e9a203b0e"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.95.0/tyler_2.95.0_darwin_amd64.tar.gz"
      sha256 "8ac4b90b86002d3c90876db4815899955be7253f58d98a25c07d2d0ca18112ed"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
