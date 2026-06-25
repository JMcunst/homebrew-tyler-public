class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.537.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.537.0/tyler_0.537.0_darwin_arm64.tar.gz"
      sha256 "61f22546e865653351fae665ada2c5263967e69f324283b0e4249fc09f0590bf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.537.0/tyler_0.537.0_darwin_amd64.tar.gz"
      sha256 "c3fe2b89ea3a7baa67398550f94fed108276c96bfaf212416ee9d2f9c8927e38"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
