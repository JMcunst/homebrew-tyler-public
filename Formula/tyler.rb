class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.81.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.81.0/tyler_0.81.0_darwin_arm64.tar.gz"
      sha256 "1bc665d41d64b26ccc644b9563fb1417a50842b31e49874277bfcf4f836fc40c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.81.0/tyler_0.81.0_darwin_amd64.tar.gz"
      sha256 "dd52b44822fdc8c8a7ac7e28efccda9d262ba7fb5391885a5abb8da75d88af8b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
