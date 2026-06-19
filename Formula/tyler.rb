class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.442.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.442.0/tyler_0.442.0_darwin_arm64.tar.gz"
      sha256 "8c77e05115ae9efe12c80a24ac22eddb29def38867884134f00a767329c07a4f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.442.0/tyler_0.442.0_darwin_amd64.tar.gz"
      sha256 "595c921b0c270ae7f2d5441d2f066506fa7283264537179751fc966ccf5925c5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
