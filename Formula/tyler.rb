class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.388.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.388.0/tyler_0.388.0_darwin_arm64.tar.gz"
      sha256 "768b4ec4d6862a8a93fbe7706289feceb7930faa7280b87aaa88597c3dde8f66"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.388.0/tyler_0.388.0_darwin_amd64.tar.gz"
      sha256 "9db556852d5540df0aa5a1281af4325f3df6e369b15447adb342f4eb2598d73b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
