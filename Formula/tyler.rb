class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.82.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.82.0/tyler_0.82.0_darwin_arm64.tar.gz"
      sha256 "fef3ae90361198809fb0ce8d8ca487bc6487c84343e70b93d4080c295a9c9a0e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.82.0/tyler_0.82.0_darwin_amd64.tar.gz"
      sha256 "11724e826fee9000e62049c5f63acf341ad15c8226517e7e603315307ecd00e8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
