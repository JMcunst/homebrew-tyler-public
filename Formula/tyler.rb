class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.55.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.55.0/tyler_0.55.0_darwin_arm64.tar.gz"
      sha256 "9c6f70ab7a7e7689d867ca335bca087035b39926ecdc89d8165c63ef5a5260af"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.55.0/tyler_0.55.0_darwin_amd64.tar.gz"
      sha256 "f86698ece04c6ff0459ec0b001132ab5f0a593c99541f35db72896c2e868ce04"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
