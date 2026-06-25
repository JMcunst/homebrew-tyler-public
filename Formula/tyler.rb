class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.516.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.516.0/tyler_0.516.0_darwin_arm64.tar.gz"
      sha256 "30f9f7ea37dd0bffc663fb28431473942c6507774073a3eeb00c638d84c52075"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.516.0/tyler_0.516.0_darwin_amd64.tar.gz"
      sha256 "9d0ffcda2fdcf2706f8757e99c6158179a8ab8ed7059a56f4394f9d26a4b31f1"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
