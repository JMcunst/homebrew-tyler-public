class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.131.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.131.0/tyler_0.131.0_darwin_arm64.tar.gz"
      sha256 "35327aa076b99a3ce17d2f141738b82ac2b343150b2aa1f311d9337895b040f2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.131.0/tyler_0.131.0_darwin_amd64.tar.gz"
      sha256 "377d9cbad7d5534d2c57290c2ba72f76877932f29d9b0c3c6a0784cbb1009d39"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
