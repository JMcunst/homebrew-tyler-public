class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.488.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.488.0/tyler_0.488.0_darwin_arm64.tar.gz"
      sha256 "07aea90eea2e7c295d99cab15f1ec6113879df9c14bbb4f887eebdc00a80da16"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.488.0/tyler_0.488.0_darwin_amd64.tar.gz"
      sha256 "e4d224ebb1e03bf8a0b48518e73e71ee66efd247b59e8f20d611dc48dbb1e532"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
