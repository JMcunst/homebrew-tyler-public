class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.541.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.541.0/tyler_0.541.0_darwin_arm64.tar.gz"
      sha256 "0e40c4e08fb2934cf115b44dad544893bf2a06e99e34e3622dd1a8aeefc6b883"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.541.0/tyler_0.541.0_darwin_amd64.tar.gz"
      sha256 "d5bbcf717eb384060b1d10b3df8e17334c2a74b6ec60780501a21b09a8c92239"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
