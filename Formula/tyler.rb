class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.21.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.21.0/tyler_0.21.0_darwin_arm64.tar.gz"
      sha256 "29dc987104749c5783f0de46998540fa33cdce29a3c202cf36eb1814379a54b4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.21.0/tyler_0.21.0_darwin_amd64.tar.gz"
      sha256 "29bede5be8f98086a924bb59a98a86df975f6f516f8dbb69dac08b30a9eedeb7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
