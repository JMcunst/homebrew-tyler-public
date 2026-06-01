class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.97.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.97.0/tyler_0.97.0_darwin_arm64.tar.gz"
      sha256 "2da553eb32af64538b0d612162ba768949fa5fcef4d32e53cd7df3d1655a20a5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.97.0/tyler_0.97.0_darwin_amd64.tar.gz"
      sha256 "09134ec34df929508bc9133894855d2e7d87121a88676fcd8b45c27e9afd5a50"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
