class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.134.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.134.0/tyler_0.134.0_darwin_arm64.tar.gz"
      sha256 "71d436ee2ebdef0fda89af0ef37c1e2e2f9c7893bbc1af76d23e2b6c424539d4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.134.0/tyler_0.134.0_darwin_amd64.tar.gz"
      sha256 "531a5305ddc42aef0edef7d6d230be1d36c9a8bdccf4731198fe7b378d7c24c4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
