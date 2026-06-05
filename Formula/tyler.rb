class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.222.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.222.0/tyler_0.222.0_darwin_arm64.tar.gz"
      sha256 "54630899e4a99c4d0481f0662e3a9ed587fe3fab52f31b94e715ae6f76f577cf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.222.0/tyler_0.222.0_darwin_amd64.tar.gz"
      sha256 "47e7d884a8a7e86a7ec8c4292735b6d07416df6160444c2b01ff4d799431866a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
