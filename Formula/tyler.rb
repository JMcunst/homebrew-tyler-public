class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.164.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.164.0/tyler_0.164.0_darwin_arm64.tar.gz"
      sha256 "9196fdb572b656b42fae135fa2b3915c49734d00602e31326c948f03f8fafacf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.164.0/tyler_0.164.0_darwin_amd64.tar.gz"
      sha256 "077d13471488738bc00dcc2982c442cb1e42b6c925460e8f4b5646eef5b9d0eb"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
