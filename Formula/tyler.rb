class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.383.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.383.0/tyler_0.383.0_darwin_arm64.tar.gz"
      sha256 "cb200b5ae7c0a2b3e7600624c4c6e051c4612739204b9f35d43c3a0aaf2a8417"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.383.0/tyler_0.383.0_darwin_amd64.tar.gz"
      sha256 "4c1c34f022a21466dd8b89867b73fa8514bb35faf902b9eaab23909c8d94d5b6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
