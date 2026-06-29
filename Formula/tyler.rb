class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.577.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.577.0/tyler_0.577.0_darwin_arm64.tar.gz"
      sha256 "1b9474129d358cc03cde955b62b0ff408009c2f2ff14eb13d34ef1f136866e09"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.577.0/tyler_0.577.0_darwin_amd64.tar.gz"
      sha256 "9d44b7807da63f70290ae4687aad7a097116e235828ce6bb510c9e9ab75fcce4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
