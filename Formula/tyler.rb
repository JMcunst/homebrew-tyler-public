class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.568.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.568.0/tyler_0.568.0_darwin_arm64.tar.gz"
      sha256 "c0338adbbe39a5708da97f023a2153a6c0284c232dc89dcb74fd7e946f654ea8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.568.0/tyler_0.568.0_darwin_amd64.tar.gz"
      sha256 "41aca308fa0f77c89b2d7b1c341212dca220f953e3056350770629bf8d844dc9"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
