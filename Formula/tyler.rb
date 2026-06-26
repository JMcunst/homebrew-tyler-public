class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.546.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.546.0/tyler_0.546.0_darwin_arm64.tar.gz"
      sha256 "d423105cd70a903e47dcdfbff3546f841d1458a56a2ccfc9900ed2ed62906635"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.546.0/tyler_0.546.0_darwin_amd64.tar.gz"
      sha256 "09a9e286e2bf4b20e3caf7c4a919b8a26e15e68eff73fc0284f8d075dcdcec95"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
