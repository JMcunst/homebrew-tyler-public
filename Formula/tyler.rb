class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.121.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.121.0/tyler_0.121.0_darwin_arm64.tar.gz"
      sha256 "69f74d10a379e9629c171543b83274836a0e5c613110910c0e0fc87d861a3fe0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.121.0/tyler_0.121.0_darwin_amd64.tar.gz"
      sha256 "c5d49d8f3bfed2d38b68ce3ffe66629f8d834331a472117b7e2278473baa5171"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
