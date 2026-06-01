class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.118.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.118.0/tyler_0.118.0_darwin_arm64.tar.gz"
      sha256 "4cd6b4176e97cc563a09ed911ba882af83d0ff044bad9e9c320fffcf79c8c955"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.118.0/tyler_0.118.0_darwin_amd64.tar.gz"
      sha256 "8b8d69cdb3ae755deba109c3b17f9c0bd8c47b01c72fb1ae3bad099916a874d4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
