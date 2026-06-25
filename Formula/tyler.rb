class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.518.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.518.0/tyler_0.518.0_darwin_arm64.tar.gz"
      sha256 "e6bf5e070f1c97211930be33dfc9371323f3c56c9571b622bab177d000f01249"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.518.0/tyler_0.518.0_darwin_amd64.tar.gz"
      sha256 "11fed66eefe312ffea1c5e1b241b2ac6b06b330bc3be0f6d3d5b43f25cadfced"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
