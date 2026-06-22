class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.485.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.485.0/tyler_0.485.0_darwin_arm64.tar.gz"
      sha256 "d7a097eefc8aa7b6be22c89644db3990209edb48711ce5181ad814994ef545d9"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.485.0/tyler_0.485.0_darwin_amd64.tar.gz"
      sha256 "a1fdb3681a39d435df584ba299e74e0d68d5671c6989e33f8bc0637fb9180e85"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
