class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.522.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.522.0/tyler_0.522.0_darwin_arm64.tar.gz"
      sha256 "049ace9e7a6768f0127451e436577fbc89f86ca52acc1f292bd2ac06a852522e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.522.0/tyler_0.522.0_darwin_amd64.tar.gz"
      sha256 "47274b088adcd28ef446a417d988cfc7ffdc00feb02f4b8f96923308c93cdc97"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
