class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.451.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.451.0/tyler_0.451.0_darwin_arm64.tar.gz"
      sha256 "65e25ddf9bc58bf631908c0b7bbcc82c993962cdd574495af88b7a0049ab2ee0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.451.0/tyler_0.451.0_darwin_amd64.tar.gz"
      sha256 "cddd8c98a12399d90ca731ff3f12d2a420f99e624ede853b5120db705b99ac3f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
