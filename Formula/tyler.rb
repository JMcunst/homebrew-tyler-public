class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.374.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.374.0/tyler_0.374.0_darwin_arm64.tar.gz"
      sha256 "d60399ade2f48a79c95626f6c680db64c643277af3b81d7a2c9cb58129d7401e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.374.0/tyler_0.374.0_darwin_amd64.tar.gz"
      sha256 "ca80c5dbb2af7dcfb38d34f86e9bf05e254bb44910093eaa0f3cc3cca825d89c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
