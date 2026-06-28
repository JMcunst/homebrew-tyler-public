class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.566.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.566.0/tyler_0.566.0_darwin_arm64.tar.gz"
      sha256 "6aafec11ceaae678e91de0c76af4eb8e60d41def4242e6249977819731fa231b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.566.0/tyler_0.566.0_darwin_amd64.tar.gz"
      sha256 "a14ec5b70cfd61e8f778986adbd105574367bcb475460add585ae212ec29c663"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
