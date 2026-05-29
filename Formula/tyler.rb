class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.90.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.90.0/tyler_0.90.0_darwin_arm64.tar.gz"
      sha256 "503798937f84f336586a78c695000891130569f044e1e3306537ec4d073d29e2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.90.0/tyler_0.90.0_darwin_amd64.tar.gz"
      sha256 "6ddcd3e512c8c2a8903b044fe5bf8993709ce52c636984c8fc9665aaa1173444"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
