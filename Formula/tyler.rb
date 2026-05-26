class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.46.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.46.0/tyler_0.46.0_darwin_arm64.tar.gz"
      sha256 "59d769249c869f8d3a2f9d7caa70d44cf41aaf62d6616a1ccc35d0f1d25d7a3d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.46.0/tyler_0.46.0_darwin_amd64.tar.gz"
      sha256 "9a741fd314d5a26903eea58ba6afe93975f6811dced70d87a2af3c71d21d1617"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
