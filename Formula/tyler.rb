class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.140.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.140.0/tyler_0.140.0_darwin_arm64.tar.gz"
      sha256 "b9367e3ea1ee4fd77a20feb0d05988dddfb26d5f081420e1b03b93446a27fc35"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.140.0/tyler_0.140.0_darwin_amd64.tar.gz"
      sha256 "7934cbdb943fcbbd33ef4892ba7c6f5e931e44c5420db3c46a9c492777c2f80b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
