class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.378.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.378.0/tyler_0.378.0_darwin_arm64.tar.gz"
      sha256 "c2346961e5f658c6e669eeb3efdbe9a4d75bc140b0f2086f105338e9311eba2d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.378.0/tyler_0.378.0_darwin_amd64.tar.gz"
      sha256 "97787cac1ee4e1a67d4c63c12b4d549f04ebec87f558ba10d04b44e5cadfdba4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
