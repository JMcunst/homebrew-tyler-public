class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.85.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.85.0/tyler_0.85.0_darwin_arm64.tar.gz"
      sha256 "c0fc34ea7e8fad9eeedeb54ab914ab31bb524f51cf09f386eb426b12ce3f66c2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.85.0/tyler_0.85.0_darwin_amd64.tar.gz"
      sha256 "daf8a81d5a131d52f4b7bd63d9fd44d7cdf02ee7e433932e4cde3dd8b42028f6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
