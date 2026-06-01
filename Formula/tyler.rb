class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.137.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.137.0/tyler_0.137.0_darwin_arm64.tar.gz"
      sha256 "8f1492b16773be7b54da870fd5e34776121080a038811492c7bb3efb4a488925"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.137.0/tyler_0.137.0_darwin_amd64.tar.gz"
      sha256 "2c7871f1eab7d5560ef01359082f7f6726b2d9ece8b50584fd0d2356d2399007"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
