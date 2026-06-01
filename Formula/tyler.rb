class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.136.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.136.0/tyler_0.136.0_darwin_arm64.tar.gz"
      sha256 "260ec3fbf5180f446d2a63e0daa2de1c85fa1a685d0266d2ea78ec2f836a7d0e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.136.0/tyler_0.136.0_darwin_amd64.tar.gz"
      sha256 "7700b812a8a07803357360e579bdc1aa1fcdfeff557f44c7d9acf4ce029cf004"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
