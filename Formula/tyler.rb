class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.437.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.437.0/tyler_0.437.0_darwin_arm64.tar.gz"
      sha256 "7aff7d500019aa686384ed60948b6a223a2a84df732e5b9032a03baa57fd8344"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.437.0/tyler_0.437.0_darwin_amd64.tar.gz"
      sha256 "bacc4961a2192a71d0e7720f003550068ce0715c31196c5b197bdc359029ff35"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
