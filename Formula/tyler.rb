class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.212.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.212.0/tyler_0.212.0_darwin_arm64.tar.gz"
      sha256 "aff1f3a13eeafe58e5bfc4af9a9e29e1be56b0ab73cff4a521a66d51690c8c44"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.212.0/tyler_0.212.0_darwin_amd64.tar.gz"
      sha256 "26b98c61362b177511a8db187913500916a40b1e3cdc4f24e1b56535fc6f1fce"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
