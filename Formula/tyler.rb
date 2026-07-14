class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "1.2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v1.2.0/tyler_1.2.0_darwin_arm64.tar.gz"
      sha256 "327df246aa3c16472265afc02bbb45db8e903d1590697af69d137a0cf02f27b2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v1.2.0/tyler_1.2.0_darwin_amd64.tar.gz"
      sha256 "c380f2107347654cd5caceca829ebf55a9a89929166fc222cc57f0364c518c29"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
