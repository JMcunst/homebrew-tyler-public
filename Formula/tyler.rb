class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.372.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.372.0/tyler_0.372.0_darwin_arm64.tar.gz"
      sha256 "627a425e599b6fa6e65aba179897d2985e06c99e8e86209b42acde4b12baeab3"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.372.0/tyler_0.372.0_darwin_amd64.tar.gz"
      sha256 "62c8ff58217729bda5f98405fb37084c8a61afec54b93fd8dae69e2a5f98d354"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
