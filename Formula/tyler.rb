class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.567.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.567.0/tyler_0.567.0_darwin_arm64.tar.gz"
      sha256 "ced4347f791f126d7e0cf29aad0a2ddba0587140100c110dd981d1d0a3f4100f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.567.0/tyler_0.567.0_darwin_amd64.tar.gz"
      sha256 "bba33978f55dc22d989d680a6b6d62a4367a556e0109e79011f523c63c432398"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
