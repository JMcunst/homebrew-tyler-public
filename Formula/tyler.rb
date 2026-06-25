class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.509.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.509.0/tyler_0.509.0_darwin_arm64.tar.gz"
      sha256 "9c5cf74ece719838f28569df8a7babba23d137bfe4f9a8b4fa6bd09386120c0d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.509.0/tyler_0.509.0_darwin_amd64.tar.gz"
      sha256 "cc4ca44bee9d9a7c731103d01ca7270a9d0526bfd56bb1d836ff3655efe42dac"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
