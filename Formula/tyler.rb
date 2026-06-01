class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.126.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.126.0/tyler_0.126.0_darwin_arm64.tar.gz"
      sha256 "22bde00657c6694ed99a7a3c59771d936f1a0d58421cb68413cf87b15f68fee8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.126.0/tyler_0.126.0_darwin_amd64.tar.gz"
      sha256 "9c13ef8bdfe9a39efc69ec5e174682e9237e324f55d29d94eb10e3034a29c3b9"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
