class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.521.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.521.0/tyler_0.521.0_darwin_arm64.tar.gz"
      sha256 "003987410bcb0bbca741c77e09e87705ff49a5d29f4f65716011617e99a97e39"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.521.0/tyler_0.521.0_darwin_amd64.tar.gz"
      sha256 "bd83c91e1d5ab197a8511a80573d016f652841e40443efc9bf8746bc6e5fa2e1"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
