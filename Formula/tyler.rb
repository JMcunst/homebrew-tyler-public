class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.431.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.431.0/tyler_0.431.0_darwin_arm64.tar.gz"
      sha256 "7e0442f0b3819dee9c2f058732576fbf3f8b7ea0e1797d38526d19bdb9a1b19c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.431.0/tyler_0.431.0_darwin_amd64.tar.gz"
      sha256 "72bdbf4bfd542769bb2309d92ffae5f8e971fd0b46c5ce0c9e20b2d1e763f7a8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
