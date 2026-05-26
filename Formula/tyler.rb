class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.44.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.44.0/tyler_0.44.0_darwin_arm64.tar.gz"
      sha256 "f395cb10c434ab7c3416a4b61cafeb5f6b01e432d864e67e524f3552d615d691"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.44.0/tyler_0.44.0_darwin_amd64.tar.gz"
      sha256 "a6a378f15431f6a8f8afbdb5ad8a5ec9a6167f8e5ffa1811fb6f60f7fca70da6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
