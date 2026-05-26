class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.41.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.41.0/tyler_0.41.0_darwin_arm64.tar.gz"
      sha256 "4d395201c574fe29f4704f7b75361755f6c23035a5a05483f0a9a5a7c117ed1f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.41.0/tyler_0.41.0_darwin_amd64.tar.gz"
      sha256 "465be9d8df62d1a599baf6aecbd4403b346609bf2d63ad05560957dc03b54159"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
