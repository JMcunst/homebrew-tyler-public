class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.84.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.84.0/tyler_0.84.0_darwin_arm64.tar.gz"
      sha256 "6410fbb2c921c173193586ac881b240e88f09d5de7f751aa9c748a508e3fcff5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.84.0/tyler_0.84.0_darwin_amd64.tar.gz"
      sha256 "23473cfd49bd1ab821d5fa439a13ab006b53cccef02748bdc7c8d88eb1e6eb3f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
