class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.430.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.430.0/tyler_0.430.0_darwin_arm64.tar.gz"
      sha256 "c0466c03fcf89a08e28ddfdcbe4d23c26ee89280f6111c271bfa86aceee31eb9"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.430.0/tyler_0.430.0_darwin_amd64.tar.gz"
      sha256 "e99242c2afad111085fb634002d3a815219ba9704494266218bb70c1d5ff19ce"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
