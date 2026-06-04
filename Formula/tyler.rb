class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.206.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.206.0/tyler_0.206.0_darwin_arm64.tar.gz"
      sha256 "2ea405b3cc36022bc2e21f1eff40184273b87ebb8a2cdb05e6b0ba7af931181d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.206.0/tyler_0.206.0_darwin_amd64.tar.gz"
      sha256 "23ff5a2ccbeca6314734fb18dc5b0cc6f878a54610193f3f553ba9b5bfd0baa6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
