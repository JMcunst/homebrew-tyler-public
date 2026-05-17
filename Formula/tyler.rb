class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.10.2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.10.2/tyler_0.10.2_darwin_arm64.tar.gz"
      sha256 "c76df6ca4907c05a07e45dae94b1a85d6a8d7fc6491c6e5ed9e2aba3f4466edc"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.10.2/tyler_0.10.2_darwin_amd64.tar.gz"
      sha256 "296e7d25003f02709518a4143bea48d0f8c42f5655c2f4a83d634044a8ec10e2"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
