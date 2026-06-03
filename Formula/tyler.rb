class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.188.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.188.0/tyler_0.188.0_darwin_arm64.tar.gz"
      sha256 "cfc97758d3688176d38e9afe67fc5521157fa520e6cf11bfc291ae605ea60e4d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.188.0/tyler_0.188.0_darwin_amd64.tar.gz"
      sha256 "c4b5aee7784c27be002f266d25fd2eb4a55258879940ba5839be080186f7f8d5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
