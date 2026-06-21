class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.465.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.465.0/tyler_0.465.0_darwin_arm64.tar.gz"
      sha256 "4ddb916ae64606a781c23a4ded2dac37ccf4821406dcf5c0582e3405380b5446"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.465.0/tyler_0.465.0_darwin_amd64.tar.gz"
      sha256 "bfcfcd3342e6a1c46d101714258ff132eda94b77a12228ed7869ea511b00e765"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
