class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.61.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.61.1/tyler_0.61.1_darwin_arm64.tar.gz"
      sha256 "1214bd8f81f999f86a81e830e2cdb1dab4901b5bac4b6c906f4751810a4c88eb"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.61.1/tyler_0.61.1_darwin_amd64.tar.gz"
      sha256 "39a174623ea4e306a1313a777e096daccac54ba4324a1210bb75368398108916"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
