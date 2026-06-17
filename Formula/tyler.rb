class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.399.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.399.0/tyler_0.399.0_darwin_arm64.tar.gz"
      sha256 "9bc3da6c5bf51643eda7680975f7ff4225cb27ab625c10b2ff7ca74819d2c711"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.399.0/tyler_0.399.0_darwin_amd64.tar.gz"
      sha256 "fe6333334eecd6440a16aa46743fe18fc5c4dc8f41ea2c5b2dbd06e959a649db"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
