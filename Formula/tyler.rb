class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.583.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.583.0/tyler_0.583.0_darwin_arm64.tar.gz"
      sha256 "a9a427c608b3f88c34002c6452e8444ba61110dbaeefab33a3268db31953b83c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.583.0/tyler_0.583.0_darwin_amd64.tar.gz"
      sha256 "424d41ab8c29f7fcc28c60da08961fdca8647d3c88393210326144143ff936a8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
