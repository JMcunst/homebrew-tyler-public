class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.3"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.3/tyler_0.3.3_darwin_arm64.tar.gz"
      sha256 "420755173194ded244019c033a1b1c9b6f386ed870af89bfea43f20285d339c4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.3/tyler_0.3.3_darwin_amd64.tar.gz"
      sha256 "6bf4b3f4caf4437250da74667a77c3ebb78103a3573f4e0c88c96214215fc0ee"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
