class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.54.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.54.0/tyler_0.54.0_darwin_arm64.tar.gz"
      sha256 "77429f0e7ba877e0e0cefa1243a922a3248b8041d06783dfa4406b96c9bba76b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.54.0/tyler_0.54.0_darwin_amd64.tar.gz"
      sha256 "4f4e5dbe22f39705f13b5aa30cc3359e6088a6868bd28e60d26cb310478221d8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
