class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.210.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.210.0/tyler_0.210.0_darwin_arm64.tar.gz"
      sha256 "ffde4f725ece97dfc199d1914e0d83da1320be71624ee47683c7aa6f37b2f1e0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.210.0/tyler_0.210.0_darwin_amd64.tar.gz"
      sha256 "c53c64defe806f90be63174a72fb1c8e3d2571fadb5cd2d37ee2e37b56b3d8ee"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
