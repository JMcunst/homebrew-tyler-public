class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.30.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.30.0/tyler_0.30.0_darwin_arm64.tar.gz"
      sha256 "8bc91db13b0b20913ea2b5f44f6c2d296081079a17496b659d40e63e5e21371a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.30.0/tyler_0.30.0_darwin_amd64.tar.gz"
      sha256 "21133b41ad40e96ac07f03c905a5ca135d2336a66f44e09b179eea085c38dffd"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
