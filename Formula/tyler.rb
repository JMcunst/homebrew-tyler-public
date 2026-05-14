class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.2.0/tyler_0.2.0_darwin_arm64.tar.gz"
      sha256 "1df7e2b69c1b8716e6eef8387244c90f7dd5e1a2a46313a27659a26f7cc6f0dc"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.2.0/tyler_0.2.0_darwin_amd64.tar.gz"
      sha256 "4594f25720a20e1f1fbeb24afa5819ff8d6d8f6a7cafeae32b08df0b3b928e5a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
