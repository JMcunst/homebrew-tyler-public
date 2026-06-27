class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.563.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.563.0/tyler_0.563.0_darwin_arm64.tar.gz"
      sha256 "a14f6c593eb3015b18e915a66d269290addc6ef48c57fd48b3969211447f7f3d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.563.0/tyler_0.563.0_darwin_amd64.tar.gz"
      sha256 "d2bf08d9cfe28979bc1eba7d6945b514b6461c52af774168645ca6833dc3b9db"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
