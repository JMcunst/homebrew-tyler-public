class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.52.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.52.0/tyler_0.52.0_darwin_arm64.tar.gz"
      sha256 "513eecb224c331d18ffb818f45bcbf92827f7d07ca580572886fa2a7c75118de"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.52.0/tyler_0.52.0_darwin_amd64.tar.gz"
      sha256 "9f74aa0fe77321170a885175515bf49f6f8675f671da5ca409fc7b7f6b240db4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
