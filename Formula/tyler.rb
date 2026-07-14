class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "1.0.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v1.0.0/tyler_1.0.0_darwin_arm64.tar.gz"
      sha256 "65ece35cc17737d33d15dcc77740d85bc1281ab58e1aa42fca56dba2623c21e2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v1.0.0/tyler_1.0.0_darwin_amd64.tar.gz"
      sha256 "f735c1f9f84d93320ceeae72fbac5390467e1d01f1d328b9fe5aa2b97c4ccef0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
