class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.405.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.405.0/tyler_0.405.0_darwin_arm64.tar.gz"
      sha256 "8d28e20b4319154f3a8a831a12ddde4d176d0b909b6df3895b6aeb784141e4d9"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.405.0/tyler_0.405.0_darwin_amd64.tar.gz"
      sha256 "8d9d7fff32469be09930b9dc9fe0dd00416d60001e0615659c93177a439af003"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
