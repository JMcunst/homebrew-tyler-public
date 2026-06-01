class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.139.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.139.0/tyler_0.139.0_darwin_arm64.tar.gz"
      sha256 "588e744f4c48bce1b34d7fd7dcee9001b31ea9830ece428fb94c720eaafa934c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.139.0/tyler_0.139.0_darwin_amd64.tar.gz"
      sha256 "d596b83af69cfda1db9867243fc1687a9af61a9e384cfa066d9887ec6dfebb6c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
