class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.106.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.106.0/tyler_2.106.0_darwin_arm64.tar.gz"
      sha256 "3546e8b3a6260dbaa08beeffc6bd71a66479b1b443d956acdde152daa47bf29f"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.106.0/tyler_2.106.0_darwin_amd64.tar.gz"
      sha256 "7edb90a258e32a9a1831e08359541fcc67b2ba43aa56d916a5e510bfa4f4ce3c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
