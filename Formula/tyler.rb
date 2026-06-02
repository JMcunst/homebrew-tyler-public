class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.157.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.157.0/tyler_0.157.0_darwin_arm64.tar.gz"
      sha256 "8c3130b157e0840a7ba30d5b2407e9c35c2257ba9b5bfae4e0fb4d1850f083a6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.157.0/tyler_0.157.0_darwin_amd64.tar.gz"
      sha256 "ad0ef2155e0964b4b9fe7cf097970e9075153c35c13e7cf97e6402019935fd86"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
