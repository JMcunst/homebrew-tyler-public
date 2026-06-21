class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.459.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.459.0/tyler_0.459.0_darwin_arm64.tar.gz"
      sha256 "826ee08a1bb244199a55045253e5cdb0adaa835833f3a0e15e9665c20fc03290"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.459.0/tyler_0.459.0_darwin_amd64.tar.gz"
      sha256 "44dfb188bbb8cb0d151cecc849048025dccb4c50a73d50e39e4f46e9c4dbfae8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
