class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.462.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.462.0/tyler_0.462.0_darwin_arm64.tar.gz"
      sha256 "1630d3eb64cec85abc801186a9302adfff879ae233367aa2fe25d2bdcc47ddd3"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.462.0/tyler_0.462.0_darwin_amd64.tar.gz"
      sha256 "4cfa7609707b2930a57b1db0e6378b84214e52d6ec5bae99aa050443a6acd34d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
