class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.130.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.130.0/tyler_0.130.0_darwin_arm64.tar.gz"
      sha256 "f62e719071a31126cc4a6a582eaf77f5e70cc0135aa623be5d4c371505a26936"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.130.0/tyler_0.130.0_darwin_amd64.tar.gz"
      sha256 "6a8ddad2500b594f61687dff48d9c75a072dc139798a5b3091bb9bab09a710d8"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
