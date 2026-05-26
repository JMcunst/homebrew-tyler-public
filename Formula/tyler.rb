class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.42.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.42.0/tyler_0.42.0_darwin_arm64.tar.gz"
      sha256 "7513de4d49970ea5786e9354ed2b09b3be1d68f860f6daec458b73031651e1b7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.42.0/tyler_0.42.0_darwin_amd64.tar.gz"
      sha256 "48b5df23ef9db43bdb3f2f25875870fb04d05945f6cf5556617222eb869a1c74"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
