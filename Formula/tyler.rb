class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.483.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.483.0/tyler_0.483.0_darwin_arm64.tar.gz"
      sha256 "f94fb1bef383836fd789b78102a33390aa9affb4839d1fa62405437fbfcb4dea"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.483.0/tyler_0.483.0_darwin_amd64.tar.gz"
      sha256 "8b2b2f05fb15f60d0dd0aea5b0e18335dc38fd08f4744992468ebd044f4912ef"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
