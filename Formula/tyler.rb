class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.409.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.409.0/tyler_0.409.0_darwin_arm64.tar.gz"
      sha256 "b17c05f2e4a714549bb69dcbc7ed02d7fd51ee740a25793afdb705bddd36534a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.409.0/tyler_0.409.0_darwin_amd64.tar.gz"
      sha256 "38960c91bb282363dc29588e334187872a81398cd63b793d6a88b946853a3e96"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
