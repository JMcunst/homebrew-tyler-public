class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.152.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.152.0/tyler_0.152.0_darwin_arm64.tar.gz"
      sha256 "327f35823fae4963630f25d1c101e7b13a02b87dd38cd52850d57946cad72ea6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.152.0/tyler_0.152.0_darwin_amd64.tar.gz"
      sha256 "b888486880ff0041a14ebce081e2d2eb84a667db179aff30f03fddd0c91a5d1b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
