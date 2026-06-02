class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.177.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.177.0/tyler_0.177.0_darwin_arm64.tar.gz"
      sha256 "e7f56b44de712129ad12777a8cd6aa8fa30c8881fe9dd99d947bb7eba2701106"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.177.0/tyler_0.177.0_darwin_amd64.tar.gz"
      sha256 "9e26a0f2893247fc117ea4dc26f67647b81daeb3faec77053d1d9f18e50dc130"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
