class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.456.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.456.0/tyler_0.456.0_darwin_arm64.tar.gz"
      sha256 "13e1529d3fef966a76e70e4877de3bb17647f5511989adce9988da6e05ba74f4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.456.0/tyler_0.456.0_darwin_amd64.tar.gz"
      sha256 "e06aee5f301508bdbdafbd31143c1768fa7b51a0c033bdf717df815ad0af9fe3"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
