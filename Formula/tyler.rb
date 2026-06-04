class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.198.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.198.0/tyler_0.198.0_darwin_arm64.tar.gz"
      sha256 "0c375d51acb6effe1681a7f9a16004c44d2b4c25c7c3e04f88f17e64e789e622"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.198.0/tyler_0.198.0_darwin_amd64.tar.gz"
      sha256 "4ec1fcc6c234eb45ce96b390eb9d8195ae1bcc913923b9e71a50a8347697202a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
