class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.587.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.587.0/tyler_0.587.0_darwin_arm64.tar.gz"
      sha256 "457dee8999fd79f3e73a6fec51509b1ae5efb9f16cd3777bd117a05e8af2438c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.587.0/tyler_0.587.0_darwin_amd64.tar.gz"
      sha256 "0b868225a30f2389f1bae5d62b36fb0bcc51aeaed90e3d345d77469f158a6bd7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
