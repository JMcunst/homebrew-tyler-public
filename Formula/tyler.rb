class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.508.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.508.0/tyler_0.508.0_darwin_arm64.tar.gz"
      sha256 "4af8b82cc51ed8e8a1a8dbf4995cdfe2b49f25e7f557db133a71c95a6b53bc54"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.508.0/tyler_0.508.0_darwin_amd64.tar.gz"
      sha256 "85b1d93206a48a16722cbbe2fef34769de7172aa4d4cc7fe13da4e0078582d91"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
