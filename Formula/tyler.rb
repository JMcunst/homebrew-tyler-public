class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.596.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.596.0/tyler_0.596.0_darwin_arm64.tar.gz"
      sha256 "16bcb3eddc6ad41b7a9f854ff1d1c6e1f9ccfae48e6c845ffe47cc565723e6c5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.596.0/tyler_0.596.0_darwin_amd64.tar.gz"
      sha256 "10aaef33973ce97fffb153aea79af028d62a037635b8e1d5ba6376d34c4270c5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
