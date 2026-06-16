class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.363.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.363.0/tyler_0.363.0_darwin_arm64.tar.gz"
      sha256 "a809f9185ffb34742316b1bb3565e23b3cb6364f33cfa2f95982269f5f366fa7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.363.0/tyler_0.363.0_darwin_amd64.tar.gz"
      sha256 "28f8effe4d624d675f779763e07ceab88acc6b7f5b1465fbb013c11e71f87eb8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
