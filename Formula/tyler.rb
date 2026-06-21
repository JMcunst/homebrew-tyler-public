class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.469.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.469.0/tyler_0.469.0_darwin_arm64.tar.gz"
      sha256 "2e4dee187f0291c9b6ff0cf5d7e0cff3fa129d72534da7ed1a7e522306ac0729"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.469.0/tyler_0.469.0_darwin_amd64.tar.gz"
      sha256 "c1c503fc4b4d2b2f9161d2836310d3e0aa179caddfc3532217f67873136ba5b0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
