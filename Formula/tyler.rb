class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.385.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.385.0/tyler_0.385.0_darwin_arm64.tar.gz"
      sha256 "470efa3bb9910d9af90c1b22b0e80958fb3d31b447822661b08c75ec22020c0e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.385.0/tyler_0.385.0_darwin_amd64.tar.gz"
      sha256 "abd4ee0e3dc2dde5209386756fe24d1f4b4213a4309f78904c8c6b5c30df31ee"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
