class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.507.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.507.0/tyler_0.507.0_darwin_arm64.tar.gz"
      sha256 "764747c63a6c88f51f58ea11225a94241b1302d6b7d62750f19e9b1c618f9f50"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.507.0/tyler_0.507.0_darwin_amd64.tar.gz"
      sha256 "ce31a0c1f392f93ba4a69bc91ffb357c1212e5eba6a01234e20cdedeb76394ae"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
