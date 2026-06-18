class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.421.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.421.0/tyler_0.421.0_darwin_arm64.tar.gz"
      sha256 "104f0dbd9e8fb2d46c4ae0c5c155b4eb6ac8ff6a1071158492adf0b0e70485e5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.421.0/tyler_0.421.0_darwin_amd64.tar.gz"
      sha256 "1d63a0e9b15b8365422657858316a874f187904cae4f8a29c153db0e12957c71"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
