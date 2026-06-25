class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.520.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.520.0/tyler_0.520.0_darwin_arm64.tar.gz"
      sha256 "bca73d679081abf8fa0fbcf070e67a40238e7adc1c8164ec1fb7fb4cca1fc90d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.520.0/tyler_0.520.0_darwin_amd64.tar.gz"
      sha256 "6614f8c77b51692c784dff4c73cdbc9b83bc1cc1ae4905beee4c7d68facd95a7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
