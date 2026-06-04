class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.209.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.209.0/tyler_0.209.0_darwin_arm64.tar.gz"
      sha256 "c22a4b7b5512cb03d3650efbac0bde66db18fda8680659e06b070d50d4794deb"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.209.0/tyler_0.209.0_darwin_amd64.tar.gz"
      sha256 "553747b1fc42e5855d2b2a554c9f63f8787b15460d0406e713f1ec9e6c61eb95"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
