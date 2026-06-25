class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.512.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.512.0/tyler_0.512.0_darwin_arm64.tar.gz"
      sha256 "0e6d17fd6f026c11e1c8c43fc8fe7158c2708b8180b9a2acbff5b6a63f5fc92f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.512.0/tyler_0.512.0_darwin_amd64.tar.gz"
      sha256 "98b347c70a133f376660433bf570712b011c4fd99466eff220f0e811c8a25b49"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
