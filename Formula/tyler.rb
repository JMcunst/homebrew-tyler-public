class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.112.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.112.0/tyler_0.112.0_darwin_arm64.tar.gz"
      sha256 "4ac5b1571f5ce2fed6bff2a3f059f69c3338bb294f161b63cd4e9ac05e9d938c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.112.0/tyler_0.112.0_darwin_amd64.tar.gz"
      sha256 "96719114c10de97b20b3b8ebdd572d4715a5611a61f34e62cd48e8d8044e62e9"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
