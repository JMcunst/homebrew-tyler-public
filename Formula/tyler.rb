class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.225.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.225.0/tyler_0.225.0_darwin_arm64.tar.gz"
      sha256 "410bd16496145aaa0e30d5bf26dba5f6999b3f3e035fcfa829448eaf6a36c879"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.225.0/tyler_0.225.0_darwin_amd64.tar.gz"
      sha256 "8d4ba68ec265cd7edb360d0eb85253bef7295cd4b26e42461ed9323d4840065c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
