class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.102.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.102.0/tyler_0.102.0_darwin_arm64.tar.gz"
      sha256 "f80b08079317092e66b17db245cc235b57a79ac4c2343bf1c22b7352639dfc33"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.102.0/tyler_0.102.0_darwin_amd64.tar.gz"
      sha256 "24d0d45783f67cd0b44bea1fd49e1e8c0d3e677a4a7f369d5d98ee07a0192dc4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
