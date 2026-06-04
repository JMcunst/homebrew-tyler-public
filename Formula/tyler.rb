class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.214.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.214.0/tyler_0.214.0_darwin_arm64.tar.gz"
      sha256 "e167ddfc0e6edb462b60d6b55e60c5fa22eb7b2b844c98de849b4c5853ee0758"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.214.0/tyler_0.214.0_darwin_amd64.tar.gz"
      sha256 "1d839bf0547d3cbff29e19362f2b43a895ea3c901461eda44f6b91e1ca042721"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
