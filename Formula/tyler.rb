class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.471.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.471.0/tyler_0.471.0_darwin_arm64.tar.gz"
      sha256 "bf5076fdbf5781bef293001d25fdc6e0ee1081f98bf56d94db7108d227b34b4b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.471.0/tyler_0.471.0_darwin_amd64.tar.gz"
      sha256 "b2d6cfb77aa1c9fc1ddc355ac398ee238658843f60250e97350b1760d6f9aa39"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
