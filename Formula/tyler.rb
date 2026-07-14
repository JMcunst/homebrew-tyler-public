class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "1.1.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v1.1.0/tyler_1.1.0_darwin_arm64.tar.gz"
      sha256 "ba87eede73913ced8281d06ebc15ca68510a200901f0fc8c568b50636f2c4b75"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v1.1.0/tyler_1.1.0_darwin_amd64.tar.gz"
      sha256 "11f7ef0958e5e68b561122c240ec0237cb96ccb40142d388477bd8b5968a23ad"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
