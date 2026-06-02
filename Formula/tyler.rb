class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.156.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.156.0/tyler_0.156.0_darwin_arm64.tar.gz"
      sha256 "44f45ac7f667c70af2f57397bdb901794e135bcf06b91865916b8a63e5290999"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.156.0/tyler_0.156.0_darwin_amd64.tar.gz"
      sha256 "94d8fcfbaaaefc1699a358b3b240e7579835b66aa07b555c2708afe01365e361"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
