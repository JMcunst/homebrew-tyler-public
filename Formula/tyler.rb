class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.96.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.96.0/tyler_0.96.0_darwin_arm64.tar.gz"
      sha256 "9dbc1155c8c895b1412cccab0159e55341aa61350cdc73b52dec16c500f83a43"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.96.0/tyler_0.96.0_darwin_amd64.tar.gz"
      sha256 "cc973f5f375a851c721ec767c7b138263422d51ce9589ad578a6aa5cfb66f480"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
