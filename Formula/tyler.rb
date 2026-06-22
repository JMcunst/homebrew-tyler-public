class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.477.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.477.0/tyler_0.477.0_darwin_arm64.tar.gz"
      sha256 "17ba3de7449f1de0947c4a56d4d26205daac377fe1cc248f4bbc11e26cb772c8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.477.0/tyler_0.477.0_darwin_amd64.tar.gz"
      sha256 "b7ca36fe0fe826ac0955fdd5aca601caa969585661b384dce01e4e173234e237"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
