class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.104.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.104.0/tyler_2.104.0_darwin_arm64.tar.gz"
      sha256 "59bccd7874d2d4443476950089624781c768b0e48d40c27fd60d5d25f6f3a5e7"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.104.0/tyler_2.104.0_darwin_amd64.tar.gz"
      sha256 "1dc70882498f886a72f9d378b614d0cf5a94cf29bc8fd5b9e093479492d819bb"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
