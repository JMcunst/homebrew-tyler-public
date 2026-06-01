class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.103.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.103.0/tyler_0.103.0_darwin_arm64.tar.gz"
      sha256 "720843f268ba717f130f732d556c0557da2c60a03e33bc378c7bceca492e66fe"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.103.0/tyler_0.103.0_darwin_amd64.tar.gz"
      sha256 "16e2f5d4471053b081be67e5cdd4ef323fc8dd1b0b5133d6a00d05a941b3c5a3"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
