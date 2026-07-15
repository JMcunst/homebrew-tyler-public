class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "1.4.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v1.4.0/tyler_1.4.0_darwin_arm64.tar.gz"
      sha256 "76122bcdab388f0dfa6a0898258670e156639d1ab597302548cea894efc0b7f9"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v1.4.0/tyler_1.4.0_darwin_amd64.tar.gz"
      sha256 "748d73bccfc5747f586130f1d29e686ae670da908d698c7b983e000433777f3f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
