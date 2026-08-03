class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.91.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.91.0/tyler_2.91.0_darwin_arm64.tar.gz"
      sha256 "e11713dffee5e4d1de56b67fb3957a8737ac488470a5ed48f3f494962da14e72"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.91.0/tyler_2.91.0_darwin_amd64.tar.gz"
      sha256 "ff52246633f5b186baae4f6e2fbbc3d47731635a3a41cfb356f1fa1b25368905"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
