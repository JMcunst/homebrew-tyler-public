class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.119.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.119.0/tyler_0.119.0_darwin_arm64.tar.gz"
      sha256 "d139b877db6fc5149b7aa96ada584b721ee811875bf878fc1badf3e03c5eb960"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.119.0/tyler_0.119.0_darwin_amd64.tar.gz"
      sha256 "c370c20ae5bbaa7bf212dfcf9496b917b7fc8c9861c4e7124b1fb9a64d8a2ecd"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
