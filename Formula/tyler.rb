class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.362.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.362.0/tyler_0.362.0_darwin_arm64.tar.gz"
      sha256 "50ab2d247ea01acee6d2a8d878693a0a5d7dc6242284c80ed2029930e3c39ff2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.362.0/tyler_0.362.0_darwin_amd64.tar.gz"
      sha256 "7492d985e462f817a132da0748a813bf57b4dac2e003a830722d403f88aa0c61"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
