class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.121.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.121.0/tyler_2.121.0_darwin_arm64.tar.gz"
      sha256 "5776b617f66e98ba48b4e5943b3ebd9cc151ca01262d675b6d6ee06886c900da"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.121.0/tyler_2.121.0_darwin_amd64.tar.gz"
      sha256 "909d11c10ac59414bf941c1776efc314f49d70e73a23d3c9731c4ec5964cffed"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
