class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.125.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.125.0/tyler_0.125.0_darwin_arm64.tar.gz"
      sha256 "c36919504924b53719fc6664221d83b483584661a1ac85e2562fa2e065d490dd"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.125.0/tyler_0.125.0_darwin_amd64.tar.gz"
      sha256 "0bd1101434dd6749e7d70c00bc9b97901aa5b935028e29d8d32f250d7f1b7751"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
