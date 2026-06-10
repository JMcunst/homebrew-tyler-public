class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.255.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.255.0/tyler_0.255.0_darwin_arm64.tar.gz"
      sha256 "2d2717c1acec88c90f2968385c7fecd07f7429eee57f2f39957803142c9aa8ab"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.255.0/tyler_0.255.0_darwin_amd64.tar.gz"
      sha256 "bd0c713d36726f3b888de18b1251757e09d1b86f8ff72b7c30ff28e7be533673"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
