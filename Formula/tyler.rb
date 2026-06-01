class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.104.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.104.0/tyler_0.104.0_darwin_arm64.tar.gz"
      sha256 "313ef58f60cc694ef04c6183cc5e564cbe57accb485902dfc6aaf33b22417af1"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.104.0/tyler_0.104.0_darwin_amd64.tar.gz"
      sha256 "7be91c617e587c8946747c47c722b9bb637578474f6f67369d7a4aa94b379b71"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
