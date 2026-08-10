class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.109.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.109.0/tyler_2.109.0_darwin_arm64.tar.gz"
      sha256 "68ec00e05cc35297c3514d51475069690b12d355f2de747db932ea29ca7d4bc2"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.109.0/tyler_2.109.0_darwin_amd64.tar.gz"
      sha256 "362b8aaa22a9b0506fc6f3053ba1a5c28505e8eafc994beac90695ab3d3cfe49"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
