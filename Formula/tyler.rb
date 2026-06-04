class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.189.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.189.0/tyler_0.189.0_darwin_arm64.tar.gz"
      sha256 "7190dda8ad77ed724be535aa7bb9521b9948e4c6c84ce079420c89196ccf2786"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.189.0/tyler_0.189.0_darwin_amd64.tar.gz"
      sha256 "3505313c3f1c570a27c540eebe507b27a108b55f77e22954983b72cc134b6bc3"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
