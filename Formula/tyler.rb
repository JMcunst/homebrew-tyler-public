class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.542.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.542.0/tyler_0.542.0_darwin_arm64.tar.gz"
      sha256 "c7c08e199b37abe171f6536384373f473f5ed920b2388be24518d513ab619147"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.542.0/tyler_0.542.0_darwin_amd64.tar.gz"
      sha256 "e607c0a34743378468fc9bfb7d30722f8462e5eb3af6f2d555be1b86e6a3b022"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
