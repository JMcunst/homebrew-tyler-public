class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.138.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.138.0/tyler_0.138.0_darwin_arm64.tar.gz"
      sha256 "5c2ce10f3a551fdb4f88a6dfa90a201188de32ea856470876f0b86f4498d3695"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.138.0/tyler_0.138.0_darwin_amd64.tar.gz"
      sha256 "dd0f8a724d7ef1ba6330aa547789613c2067d2902ec0787e7fc141d292ff3c1f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
