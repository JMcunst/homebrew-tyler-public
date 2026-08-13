class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.125.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.125.0/tyler_2.125.0_darwin_arm64.tar.gz"
      sha256 "2a2960cac4af987a4be57ca360aaffde56d6a01564f5f7fa12ed3366f920f979"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.125.0/tyler_2.125.0_darwin_amd64.tar.gz"
      sha256 "000922f5d2e693cd62acfb0fe547e3e8d354c4589bbe20988369dd6ffe28694c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
