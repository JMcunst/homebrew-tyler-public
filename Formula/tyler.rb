class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.467.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.467.0/tyler_0.467.0_darwin_arm64.tar.gz"
      sha256 "d415a9295abb7e368abb1184c250081324f154871eb01b9f9af473b141aaa622"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.467.0/tyler_0.467.0_darwin_amd64.tar.gz"
      sha256 "c914d164bafa6db48588688c2f5f8820bfb012b2e1acc712b192b44f06bd57c2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
