class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.528.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.528.0/tyler_0.528.0_darwin_arm64.tar.gz"
      sha256 "26cf83bc853629dbe40bbcf2c2acc94d5671ea844011d8736a2ebd9c4bb009cf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.528.0/tyler_0.528.0_darwin_amd64.tar.gz"
      sha256 "dfae4dd1942c460fdb2b96f5d9f45831346cc509d05a55a63d492f7eb2009037"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
