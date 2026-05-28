class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.65.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.65.1/tyler_0.65.1_darwin_arm64.tar.gz"
      sha256 "39866d17b2cd6492910b1d44305c5c4cb79a022928d731ec264b987e3a33fb65"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.65.1/tyler_0.65.1_darwin_amd64.tar.gz"
      sha256 "1e5d6af3f6b4cc94b080f8a47c8922bc0ae10e1033af5a487695bdf99b447cda"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
