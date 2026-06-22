class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.482.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.482.0/tyler_0.482.0_darwin_arm64.tar.gz"
      sha256 "7ab6e9cb4dfb86868605d0e17376efd37e0b016e346981f5602865c91821b078"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.482.0/tyler_0.482.0_darwin_amd64.tar.gz"
      sha256 "052b7f63cb121777f8eae7b049449ab10c1829eb5ab61b5bd5ba5731be985559"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
