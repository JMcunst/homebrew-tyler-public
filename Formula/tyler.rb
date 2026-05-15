class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.7.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.7.1/tyler_0.7.1_darwin_arm64.tar.gz"
      sha256 "f0a20896c6fded25910e88b4bccec338fef3a6c88c2f51ee67859d36518f3675"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.7.1/tyler_0.7.1_darwin_amd64.tar.gz"
      sha256 "e803cb44afa6ffe9df0c14caa02d65e910495cdf3f7012ea957563befc5d6996"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
