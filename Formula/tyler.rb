class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.249.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.249.0/tyler_0.249.0_darwin_arm64.tar.gz"
      sha256 "d9c8474ea83bc3bde04f30d45adb4d559674b5087c5ca793ca364fdc2fa1adc6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.249.0/tyler_0.249.0_darwin_amd64.tar.gz"
      sha256 "190f891f9674f26c062a5bc055071634faf5fe8c6ef745329a14b118b5dae413"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
