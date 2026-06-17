class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.389.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.389.0/tyler_0.389.0_darwin_arm64.tar.gz"
      sha256 "93ca504cc159332be2dc6d9d43918a7eba33c811aeeae3c08c2c86287826226b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.389.0/tyler_0.389.0_darwin_amd64.tar.gz"
      sha256 "4add91dc5b569dc28e479a87d1e3ff401050dcc72ea5770550e53eb72100677d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
