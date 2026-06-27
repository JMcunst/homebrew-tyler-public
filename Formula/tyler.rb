class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.561.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.561.0/tyler_0.561.0_darwin_arm64.tar.gz"
      sha256 "75ba6e13f344b1431b24a147397b173011ed342c0f54cfc55d929e761a0ac853"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.561.0/tyler_0.561.0_darwin_amd64.tar.gz"
      sha256 "b0fae2a40a3bc74e7cb4ec2147bdfe2d77bc4c06ab438319a182ce571b9db192"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
