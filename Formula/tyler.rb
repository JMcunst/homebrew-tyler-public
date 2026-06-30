class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.581.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.581.0/tyler_0.581.0_darwin_arm64.tar.gz"
      sha256 "046278a44598b1c94c4be5f8ee4e46b24932ceba50d109a8112547d5c2d44f1c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.581.0/tyler_0.581.0_darwin_amd64.tar.gz"
      sha256 "0a3f75531858cb2a0c964108ead747a549cef23f54307d694db00002e9633da7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
