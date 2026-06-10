class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.267.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.267.0/tyler_0.267.0_darwin_arm64.tar.gz"
      sha256 "82806b64a391e79b77aa62df900a294f924737874b6e164a0553681445c3afaf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.267.0/tyler_0.267.0_darwin_amd64.tar.gz"
      sha256 "b1634e85bed03efa4c6ed6f8beecd2027471fc8481b5b5d1798c17736c460f0f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
