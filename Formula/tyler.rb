class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.73.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.73.0/tyler_0.73.0_darwin_arm64.tar.gz"
      sha256 "9f9b274d76e22d23e88717ecab33301936c485f38c08c2f4da93f2f45a018653"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.73.0/tyler_0.73.0_darwin_amd64.tar.gz"
      sha256 "a551f8d9067e4ca7056e174c6d488a9d49a5ea10d3225903d58adc0b2ef23b4e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
