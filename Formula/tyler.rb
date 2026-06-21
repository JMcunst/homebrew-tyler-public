class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.464.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.464.0/tyler_0.464.0_darwin_arm64.tar.gz"
      sha256 "a55ac81502c7b977329a0ec9cd0fac667bbac9f36070a03af6dfd2043a8f2317"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.464.0/tyler_0.464.0_darwin_amd64.tar.gz"
      sha256 "bca35c213f41ba9f7d34816303e3f5b3b5df852f6d32bf05e5ed741c5baab202"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
