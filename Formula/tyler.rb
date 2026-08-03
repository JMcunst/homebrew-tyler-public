class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.88.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.88.0/tyler_2.88.0_darwin_arm64.tar.gz"
      sha256 "74a87fb14d563781d4bbc9b6c789b7c0fcf1476da4e38d36354964c03d553d94"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.88.0/tyler_2.88.0_darwin_amd64.tar.gz"
      sha256 "91e03adbf0c9b2fb29466145c0cb7cfc1ce7b81a06dea04c0faa1e78f002e106"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
