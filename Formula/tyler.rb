class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.195.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.195.0/tyler_0.195.0_darwin_arm64.tar.gz"
      sha256 "34298437cf7255f0a0ea32a79464a77a364e5281e8468628aef8eb310e9a6ce5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.195.0/tyler_0.195.0_darwin_amd64.tar.gz"
      sha256 "d835eb85edd65248e1dfb535d830fb1e6f7f6ffaab227cc0eb5f79a3635f8607"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
