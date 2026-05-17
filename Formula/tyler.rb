class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.8.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.8.0/tyler_0.8.0_darwin_arm64.tar.gz"
      sha256 "06b0e5d77718b5a3ffe6e5ee608891a10c5acd4c5f595853b7b2577e8bf773e6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.8.0/tyler_0.8.0_darwin_amd64.tar.gz"
      sha256 "5b896147e1cdadf8dbfdfc3d3d62105194228a1942874bb81df9ec05c12c7f7f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
