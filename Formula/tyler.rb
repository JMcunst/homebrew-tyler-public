class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.602.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.602.0/tyler_0.602.0_darwin_arm64.tar.gz"
      sha256 "aa814367fedfd3e55e57b47dce4712397f3a54e8214180d18c38f964a4ac73c3"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.602.0/tyler_0.602.0_darwin_amd64.tar.gz"
      sha256 "5c846a7f2aa1097e288fd625edd60bdd4ec815a1003d001d8e156f988db901b7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
