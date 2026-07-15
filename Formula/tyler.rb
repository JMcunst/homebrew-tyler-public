class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "1.5.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v1.5.0/tyler_1.5.0_darwin_arm64.tar.gz"
      sha256 "9b06da75ee51da29e29b5b7fd610f9e37c16fc4a16f1c6b8b8b9dc86f2dd67f9"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v1.5.0/tyler_1.5.0_darwin_amd64.tar.gz"
      sha256 "d00a74bae235acf5c4775b909f0577b94e7ad7adc8d681ea8381d7fe492323e8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
