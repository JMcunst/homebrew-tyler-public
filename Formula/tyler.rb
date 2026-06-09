class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.250.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.250.0/tyler_0.250.0_darwin_arm64.tar.gz"
      sha256 "827a99387e289ee72f8f8c2a1f2d11119914dcb875e1b132b49322fd12e20058"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.250.0/tyler_0.250.0_darwin_amd64.tar.gz"
      sha256 "b5b62edbda1ee3b6a259d1d05e0276d81407b19018d255c9c28722f37b599f38"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
