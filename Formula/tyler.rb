class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.580.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.580.0/tyler_0.580.0_darwin_arm64.tar.gz"
      sha256 "d8884611c52b6d6d32adff1b68d660725925ae571a5d72e79e5a5d65c77ddd3c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.580.0/tyler_0.580.0_darwin_amd64.tar.gz"
      sha256 "ec2a41bd98bef2c44639debf548d00182179e81ca1f780b09b641b0a1fb45349"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
