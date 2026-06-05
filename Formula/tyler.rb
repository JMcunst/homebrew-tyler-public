class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.237.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.237.0/tyler_0.237.0_darwin_arm64.tar.gz"
      sha256 "09293eb2258dea4dfdf259158aeaa8856194c2c7e8c2b318611859b48b30338a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.237.0/tyler_0.237.0_darwin_amd64.tar.gz"
      sha256 "57177d75bf16578831089e18c238de8574bdff228dc9840bbf9b38e6a48b3fd0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
