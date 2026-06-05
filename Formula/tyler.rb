class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.232.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.232.0/tyler_0.232.0_darwin_arm64.tar.gz"
      sha256 "82f95499578c683e0604e19e3fc71a38fb1beeafa03fe32b6a68e67e97cb5ed4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.232.0/tyler_0.232.0_darwin_amd64.tar.gz"
      sha256 "c25f961f1e24b6b5300163962724d83a6879ab5bfa5f73613da0f9aaa3f36ee7"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
