class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.105.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.105.0/tyler_0.105.0_darwin_arm64.tar.gz"
      sha256 "7f768d86a3584878d592c77d1e40f4fdc059f50d30b2325b6c9f616c96118096"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.105.0/tyler_0.105.0_darwin_amd64.tar.gz"
      sha256 "91726a45805272394af91de233dc9a2fdb60009daf220d063b1bb4bcdc02c2c2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
