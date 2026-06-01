class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.95.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.95.0/tyler_0.95.0_darwin_arm64.tar.gz"
      sha256 "4a76470cf5942c7d776071f50a2c423ac7580dbe1456f2abd387328197ea4671"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.95.0/tyler_0.95.0_darwin_amd64.tar.gz"
      sha256 "2f7ca19f8e52c79eec314995eb89dbd8fa57da5e618162cf067e01b48b576cc1"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
