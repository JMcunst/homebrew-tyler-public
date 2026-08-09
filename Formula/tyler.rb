class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.102.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.102.0/tyler_2.102.0_darwin_arm64.tar.gz"
      sha256 "b853050f6d6368f606f6cbcad1535861b0c6a33e6b83272f8be6330b2fde4b2a"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.102.0/tyler_2.102.0_darwin_amd64.tar.gz"
      sha256 "db8f49903be1e5c5a9df3a2e5615d4587a3ed7894734dc87f95561605ac486b6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
