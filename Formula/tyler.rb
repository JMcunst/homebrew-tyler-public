class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.8"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.8/tyler_0.3.8_darwin_arm64.tar.gz"
      sha256 "1d29aeab4690563fa45471421b0997febde49736b043c26b9425c2c9769a1c37"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.8/tyler_0.3.8_darwin_amd64.tar.gz"
      sha256 "e7cbaaa5a0fc3cb25dd5e09e669681174d2aa13228027bd5bfc2a136bb275e12"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
