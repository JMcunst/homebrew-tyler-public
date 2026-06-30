class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.586.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.586.0/tyler_0.586.0_darwin_arm64.tar.gz"
      sha256 "58a9571d6187af382822b37415968f3e1ebf6c78500eaba9950f315be7edd892"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.586.0/tyler_0.586.0_darwin_amd64.tar.gz"
      sha256 "c887af218e898b101b1dfc75f7cbc45f51079cc9634ba4bfa90e7caf4a9276df"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
