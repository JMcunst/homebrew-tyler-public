class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.9.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.0/tyler_0.9.0_darwin_arm64.tar.gz"
      sha256 "d8a96086cc2c851a05b03266d200b50e0437030f0104c6bb251b2fb2b78d5ac4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.0/tyler_0.9.0_darwin_amd64.tar.gz"
      sha256 "6f5e4fca0c8e3ff2c1cb75809fd3fd4dfa8b206ce647af9b5716c5b81f23c98a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
