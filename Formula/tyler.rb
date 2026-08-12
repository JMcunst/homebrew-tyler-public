class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.119.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.119.0/tyler_2.119.0_darwin_arm64.tar.gz"
      sha256 "02311114452570fb668598f4f882002bd41b48ff0cc13bc6307718e46ed66b99"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.119.0/tyler_2.119.0_darwin_amd64.tar.gz"
      sha256 "c7e4d6f220213b9e7ae0d80a645fb98c992c09fc206fdff0eafef632930b9f0f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
