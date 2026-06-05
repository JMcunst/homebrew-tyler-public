class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.226.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.226.0/tyler_0.226.0_darwin_arm64.tar.gz"
      sha256 "84cb6592fa88900423280f97307e323481e578f8d023714fb3ccc4312e092dcd"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.226.0/tyler_0.226.0_darwin_amd64.tar.gz"
      sha256 "d856d8a3c2246568532d8af63d4779d013820d9606137bb2af260cb0309d40d4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
