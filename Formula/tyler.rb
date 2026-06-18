class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.429.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.429.0/tyler_0.429.0_darwin_arm64.tar.gz"
      sha256 "214cd7fab4e488741e49322bb00843e44f18d1078d3bf8a4ab0cd380da763cdf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.429.0/tyler_0.429.0_darwin_amd64.tar.gz"
      sha256 "b61e0ac14db5afe488e083eaef4b9e7c1ad5efd17699e192fb3935830e75598e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
