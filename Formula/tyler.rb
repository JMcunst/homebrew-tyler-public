class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.10"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.10/tyler_0.3.10_darwin_arm64.tar.gz"
      sha256 "876e829a918848ac35e898beac05ed2fb5871e77bcd4678d91150d9ac1e4569c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.10/tyler_0.3.10_darwin_amd64.tar.gz"
      sha256 "d455a84a76ed23eb1c94da29ae4c63d94c063da14b715a72dcde4e023560d2fd"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
