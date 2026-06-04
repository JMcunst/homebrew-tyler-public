class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.197.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.197.0/tyler_0.197.0_darwin_arm64.tar.gz"
      sha256 "7467acddeba9067cf710ef11c4ab107c27780e7843535eba7a7a0deffcfec2d3"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.197.0/tyler_0.197.0_darwin_amd64.tar.gz"
      sha256 "d9cc4880bcfe838b0d6c1251fab6ff5aca4d74508a3f2fd747d72f77f60f4c21"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
