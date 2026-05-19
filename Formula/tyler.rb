class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.19.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.19.0/tyler_0.19.0_darwin_arm64.tar.gz"
      sha256 "b75a9ac6ccd1acb7076cfabd8eb74c500ba6548469d1f36faf288a6ff07a749d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.19.0/tyler_0.19.0_darwin_amd64.tar.gz"
      sha256 "dca534ff8e4a9beed95f0ab10205da753aa2bc0f61527e8f5662974db7af2e4a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
