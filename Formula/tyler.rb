class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.124.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.124.0/tyler_0.124.0_darwin_arm64.tar.gz"
      sha256 "0bd1d98b711633eb2c60403f9f60757702cd6750734f2dac39b18381dba1fa19"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.124.0/tyler_0.124.0_darwin_amd64.tar.gz"
      sha256 "1a81f21f1194dc3bdd249da9cc444f6121d0bec6da3a16824ed2a45e0af959a6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
