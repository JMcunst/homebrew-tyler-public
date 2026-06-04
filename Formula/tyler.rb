class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.193.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.193.0/tyler_0.193.0_darwin_arm64.tar.gz"
      sha256 "d2d5b9384aefefbe31929a5fe144f52a869af2e02b0b7b174599c33e8b6411dc"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.193.0/tyler_0.193.0_darwin_amd64.tar.gz"
      sha256 "2430f7cd6d856cb6b7fc2c849bdfe9b35355fd0310d9b5e9b9dccb818d822ea0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
