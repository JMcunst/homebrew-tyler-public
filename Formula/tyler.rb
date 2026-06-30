class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.582.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.582.0/tyler_0.582.0_darwin_arm64.tar.gz"
      sha256 "a867af1b2dde1acfd3d5d57749e7631ce485e6bcdfbb038f5c579d126fa04d41"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.582.0/tyler_0.582.0_darwin_amd64.tar.gz"
      sha256 "f6bd298f9ee52006fe88b007df3b11b0c7db535b4e833b07f0e4388f05165c66"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
