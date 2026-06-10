class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.262.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.262.0/tyler_0.262.0_darwin_arm64.tar.gz"
      sha256 "1fe329623331afbe4b7a739c9ab8126c040ea1d98d63fb422cff184c607bd250"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.262.0/tyler_0.262.0_darwin_amd64.tar.gz"
      sha256 "17f9eadf06ff9f8540c5a32e7365950c46f9921eeeb09337d654d5a8ad36b0d6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
