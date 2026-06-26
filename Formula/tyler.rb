class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.548.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.548.0/tyler_0.548.0_darwin_arm64.tar.gz"
      sha256 "600d4a8fc8ac0ea8b95c2c2f7464e30a3e987872c41caeda1b9ebece6b8dca93"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.548.0/tyler_0.548.0_darwin_amd64.tar.gz"
      sha256 "5067229624194edbc02512410bf94a42ab39a406e3756fc5ecf184489544f664"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
