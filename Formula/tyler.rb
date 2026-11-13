class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.125.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.125.1/tyler_2.125.1_darwin_arm64.tar.gz"
      sha256 "71409237488a40a50ceecce8759555a7a54b8c267373f99d9146862154462b39"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.125.1/tyler_2.125.1_darwin_amd64.tar.gz"
      sha256 "3131cc139e97930f1460d069d6df5a3f94bcfed627a7b9eca906b25fbe92c799"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
