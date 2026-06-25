class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.513.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.513.0/tyler_0.513.0_darwin_arm64.tar.gz"
      sha256 "36bd5e397e864d1d91d22f5555b6f6c150eda8e7f218c229af91ae07dac08dba"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.513.0/tyler_0.513.0_darwin_amd64.tar.gz"
      sha256 "835b5b5708032a9b49b06a57aa2402c204c02230e23a6696613c6c048eb45faf"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
