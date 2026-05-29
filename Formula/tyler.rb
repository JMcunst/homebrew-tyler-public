class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.92.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.92.0/tyler_0.92.0_darwin_arm64.tar.gz"
      sha256 "461c9ddbbf712114c4b9d9eed7123021c4eb5bd155822bff535145f3c1a43a61"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.92.0/tyler_0.92.0_darwin_amd64.tar.gz"
      sha256 "bb67f98ed5ef2465771ab3c324a896592992a54f053125ebe077088cb490cf6a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
