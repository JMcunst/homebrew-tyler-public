class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.486.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.486.0/tyler_0.486.0_darwin_arm64.tar.gz"
      sha256 "dc8bad9e3911a9bf924d1117bdd5e70c3a5a39ac38af0fe5449e724da62973ad"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.486.0/tyler_0.486.0_darwin_amd64.tar.gz"
      sha256 "52a36a8769b8c975ed63e03b8e453e02ba8c8b74b4a2aff285bba0dcb46cd744"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
