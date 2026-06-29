class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.574.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.574.0/tyler_0.574.0_darwin_arm64.tar.gz"
      sha256 "3002c7fe19b58df2792982da72749e3300233c52ea02f04811439da1d68a7eab"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.574.0/tyler_0.574.0_darwin_amd64.tar.gz"
      sha256 "1a5c83a12c37997a3c6afffb842a15caa2bafcf88997944af40775edcf2fcf02"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
