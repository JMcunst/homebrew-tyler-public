class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.63.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.63.1/tyler_0.63.1_darwin_arm64.tar.gz"
      sha256 "4091688e9417f2c4e2d164164447d3fa971a6c475b13e4c0c5959f4cb97624c5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.63.1/tyler_0.63.1_darwin_amd64.tar.gz"
      sha256 "dec97e23f7d3f6bde6e9ff01417dbbc66b8d9394e83c9aa3e741a51159d0a6cc"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
