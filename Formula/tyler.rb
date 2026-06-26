class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.543.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.543.0/tyler_0.543.0_darwin_arm64.tar.gz"
      sha256 "d2d6abbc7b1903af330de58de382da55e574863604c177208de4e1b6ca5efd2a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.543.0/tyler_0.543.0_darwin_amd64.tar.gz"
      sha256 "af55faa3122d9578d60e4380f5fad2ade49e5023c79e0d689bbcf7735480eab6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
