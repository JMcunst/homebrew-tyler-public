class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.117.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.117.0/tyler_2.117.0_darwin_arm64.tar.gz"
      sha256 "5e9b6c802343f8cd3189a0e5738a6a90e215c7a34870aa8eab5519430fce7e8e"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.117.0/tyler_2.117.0_darwin_amd64.tar.gz"
      sha256 "4903c5b8bef064971c001c4e500c846173b85eccf5e0ccf0596369a94b1d934a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
