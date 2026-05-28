class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.78.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.78.0/tyler_0.78.0_darwin_arm64.tar.gz"
      sha256 "0aef84e9a4f9ed00967a1075e3d393fc63d94cb174eaf1e9057adfd800ae1f7b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.78.0/tyler_0.78.0_darwin_amd64.tar.gz"
      sha256 "4d93e55ec7003ec4be6b51efbf9c8b6cbd795fccc8395f11b5bafc85e9adff7c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
