class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.90.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.90.0/tyler_2.90.0_darwin_arm64.tar.gz"
      sha256 "3f570f4ffb2c2200f631e865230d1aa95d746d74fd7c7bc7b02df5771380548c"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.90.0/tyler_2.90.0_darwin_amd64.tar.gz"
      sha256 "e3c36001397deda0ef632e57d67ca91768366b6701f05d35fea540b4e2f2d1a4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
