class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.5"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.5/tyler_0.3.5_darwin_arm64.tar.gz"
      sha256 "50a5881046fcc4aa5957acf2c3f7ced3ab6a0b973c3e6f732f51ab43339cf8cf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.5/tyler_0.3.5_darwin_amd64.tar.gz"
      sha256 "e333fae24df875563205007b255315f4987ca4a54a9674803a624489e57e4760"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
