class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.277.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.277.0/tyler_0.277.0_darwin_arm64.tar.gz"
      sha256 "19cd3346e9cc005ec65a29af8e7038bac3d061252d13e9598f204d68aec81d39"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.277.0/tyler_0.277.0_darwin_amd64.tar.gz"
      sha256 "19ee1bbccaa31d7f1d602bd3deef85e2949b3bcd491c3b8cc9b706551ee688f6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
