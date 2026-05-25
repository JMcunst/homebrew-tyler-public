class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.34.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.34.0/tyler_0.34.0_darwin_arm64.tar.gz"
      sha256 "5458222d9c3403ff042e4c3cfc0720ee9e3dc49b8d98ed273f73eb0232797bec"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.34.0/tyler_0.34.0_darwin_amd64.tar.gz"
      sha256 "f180b2085f52daa38e01b0fe5b782a1d6c6e91ab09e8ac0ca771090552c81f76"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
