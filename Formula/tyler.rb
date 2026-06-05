class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.248.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.248.0/tyler_0.248.0_darwin_arm64.tar.gz"
      sha256 "7336181abedfa7331cb3d2c6c0e09800fd06ef97ce3a149e63498903dc655366"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.248.0/tyler_0.248.0_darwin_amd64.tar.gz"
      sha256 "a8da046469583b33ba2579a5ddcf3581fb6bac96f070a649efffc7c9b60a0b12"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
