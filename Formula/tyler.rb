class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.181.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.181.0/tyler_0.181.0_darwin_arm64.tar.gz"
      sha256 "79542af07e9677ab21c2993bfc339510beb452dba74a5e596bd3caf5d8141203"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.181.0/tyler_0.181.0_darwin_amd64.tar.gz"
      sha256 "84eb75c4b7cbe3e704d50f30164b6e94ea46b82f7b843a1ffb2f7986a54b2bb9"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
