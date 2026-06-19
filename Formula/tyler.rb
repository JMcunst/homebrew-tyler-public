class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.438.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.438.0/tyler_0.438.0_darwin_arm64.tar.gz"
      sha256 "7435cf7f0bf03816d99e0b5f36d99cdf842635a17863a19a0f7aded1d43c723c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.438.0/tyler_0.438.0_darwin_amd64.tar.gz"
      sha256 "9ead91a66e984f881bdd1531a56f11fe2b9b245396b6d058f5876f936b24de11"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
