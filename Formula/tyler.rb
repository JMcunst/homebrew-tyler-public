class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.556.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.556.0/tyler_0.556.0_darwin_arm64.tar.gz"
      sha256 "c67ab53fe98094f60442427a0b0dcb7cc6eb573ced8f237183a8031321773860"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.556.0/tyler_0.556.0_darwin_amd64.tar.gz"
      sha256 "a2cb3914a97f27824d5ef04e65d9fe67bf8a30f8d73c3545f151b02cf22b8e39"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
