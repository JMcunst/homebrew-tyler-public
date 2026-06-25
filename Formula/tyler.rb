class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.517.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.517.0/tyler_0.517.0_darwin_arm64.tar.gz"
      sha256 "33eed380b160527d3f002b6022fc85de0665eb3e5abae974b381b229058f0f8d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.517.0/tyler_0.517.0_darwin_amd64.tar.gz"
      sha256 "5c6ecf6d80df8ca9c75e45a37f6884a1cdaa81f3126e2dda44fe3b08f8c18165"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
