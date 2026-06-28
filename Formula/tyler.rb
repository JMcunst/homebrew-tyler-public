class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.572.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.572.0/tyler_0.572.0_darwin_arm64.tar.gz"
      sha256 "0e493f579b9197945456e825c9354c1fc6576923a463ba07d68478095dc59db4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.572.0/tyler_0.572.0_darwin_amd64.tar.gz"
      sha256 "51b82125fdec7e0c4034cb70a9c3d982bfad607b11bedf44883f8dd23d7eda29"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
