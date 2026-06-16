class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.366.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.366.0/tyler_0.366.0_darwin_arm64.tar.gz"
      sha256 "a4c089213c1218586bd26a4d4d3ee7855daca72b2c55a80617fcf6977c719f69"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.366.0/tyler_0.366.0_darwin_amd64.tar.gz"
      sha256 "17c929162b96dffb67cce2d33c0033933640b9a45c128cfcae552e355cc634a9"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
