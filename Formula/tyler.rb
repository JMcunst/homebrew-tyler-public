class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.531.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.531.0/tyler_0.531.0_darwin_arm64.tar.gz"
      sha256 "ef05fddf70267ac4d2eb46b397264fe61edf7cdc042314d7f7084d63eef18bc0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.531.0/tyler_0.531.0_darwin_amd64.tar.gz"
      sha256 "3754228a06eb1744b3952aeab10cb12084cdcc5eb1f378631e521628dea1a54e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
