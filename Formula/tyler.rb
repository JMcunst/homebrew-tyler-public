class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.63.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.63.0/tyler_0.63.0_darwin_arm64.tar.gz"
      sha256 "85c007fcc7ac40de5e951907ae50e673c973160db4fb84ca5aacf9a5d5785174"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.63.0/tyler_0.63.0_darwin_amd64.tar.gz"
      sha256 "736ec7aa8577a7b2a6a9cdde94326a33e907b683c5efb7d7a3d1860522388849"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
