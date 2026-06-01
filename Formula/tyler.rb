class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.115.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.115.0/tyler_0.115.0_darwin_arm64.tar.gz"
      sha256 "fbce75e18a6279eb5bc39d00869b3c652d56649f4c8ecd9adbb5cec24e3c27b4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.115.0/tyler_0.115.0_darwin_amd64.tar.gz"
      sha256 "7e2755b837031818aa5772904c556bb3ba6031db49373429af0743e16cd3feda"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
