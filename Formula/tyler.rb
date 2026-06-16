class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.368.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.368.1/tyler_0.368.1_darwin_arm64.tar.gz"
      sha256 "f2c1e994c0a868a86da5eaf48a0277a5f4d88c3bfac2c586bc2b4da70f3b8b9a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.368.1/tyler_0.368.1_darwin_amd64.tar.gz"
      sha256 "cd462515c492880edd00d0500575785d57728dc48088a275a5388a1e301a7cd5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
