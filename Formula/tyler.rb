class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.65.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.65.0/tyler_0.65.0_darwin_arm64.tar.gz"
      sha256 "6670975f7103711278b23ca771a2434cf0fae82c095a7b627edef83f772c18c3"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.65.0/tyler_0.65.0_darwin_amd64.tar.gz"
      sha256 "f71bb2f2f09824a26b8890666bb901418b8761e085fcd324d5ecbf371114f30d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
