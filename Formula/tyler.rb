class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.610.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.610.0/tyler_0.610.0_darwin_arm64.tar.gz"
      sha256 "37a0f5bd0d96816f4d7543937a7cdef1fa1857a768ac0086b2319e4dabb834ee"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.610.0/tyler_0.610.0_darwin_amd64.tar.gz"
      sha256 "b93a06d054c395d20b8ef9f3f644197d5b7dfbfa7695cdb42c3d218989b70afb"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
