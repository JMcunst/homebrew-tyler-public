class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.376.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.376.0/tyler_0.376.0_darwin_arm64.tar.gz"
      sha256 "5ef9eed368ae4dc681443f1b7b18ef76c653fc5fa45f686fdf4b384e16fe3b19"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.376.0/tyler_0.376.0_darwin_amd64.tar.gz"
      sha256 "23547977f59f5ef65e5780246b26913d251a5b79d82d83be36af5d370708f85c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
