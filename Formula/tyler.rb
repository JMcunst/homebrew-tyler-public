class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.96.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.96.0/tyler_2.96.0_darwin_arm64.tar.gz"
      sha256 "6be33548f89afc8a6619b7a0b69be45fc5d5c10119c38a5a0d02fecce5f62d05"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.96.0/tyler_2.96.0_darwin_amd64.tar.gz"
      sha256 "b4e0183fb40cde2f57328c082400268269602f141cf08d53134e33a1f0d6449a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
