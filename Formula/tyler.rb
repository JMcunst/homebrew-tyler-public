class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.4.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.4.0/tyler_0.4.0_darwin_arm64.tar.gz"
      sha256 "3ad5a4440415ca5faee81d66a6f15e30e9f70329cc63d0908f04638aa21a67b3"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.4.0/tyler_0.4.0_darwin_amd64.tar.gz"
      sha256 "d7ef86357504a28c25efba2f43924121959864efa45885a7ce01764df47c4c31"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
