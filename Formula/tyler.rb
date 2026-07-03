class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.609.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.609.0/tyler_0.609.0_darwin_arm64.tar.gz"
      sha256 "8d19df636a0faf9eb1e3472bef0c25e403e39cec246d7d59d48856e1c7166267"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.609.0/tyler_0.609.0_darwin_amd64.tar.gz"
      sha256 "148ed30f26b84648badc47bae0996fea336f00628db8628568fc78cfff663f0f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
