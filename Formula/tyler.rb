class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.64.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.64.1/tyler_0.64.1_darwin_arm64.tar.gz"
      sha256 "6ded6b151ba928e83866e762ff1430cd28d3b2abc8e47d110e810e06e8f8f87a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.64.1/tyler_0.64.1_darwin_amd64.tar.gz"
      sha256 "2263bde17eab001ce1adb8884e5b011f636b3ee67b57406bcf214b6488cd50c0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
