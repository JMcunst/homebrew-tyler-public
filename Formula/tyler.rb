class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.207.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.207.0/tyler_0.207.0_darwin_arm64.tar.gz"
      sha256 "72e1d1ef38722b7ef8bde4419fc74193ed8fdc6d4a5765cc1127937b34f078ed"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.207.0/tyler_0.207.0_darwin_amd64.tar.gz"
      sha256 "b6d45600999704c1b5ad6a8234f52f80b3bdd282a07bbe6695b3b86aca3a87ef"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
