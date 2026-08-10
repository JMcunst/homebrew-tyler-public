class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.105.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.105.0/tyler_2.105.0_darwin_arm64.tar.gz"
      sha256 "78b9e91dd58f750a1ecad2e2dea477b499b3f552dc9cb45a424a424440e134b4"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.105.0/tyler_2.105.0_darwin_amd64.tar.gz"
      sha256 "c74de88785c12e87523d2740523c5778e179f1b23c6ce522e04ac86314fd02fc"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
