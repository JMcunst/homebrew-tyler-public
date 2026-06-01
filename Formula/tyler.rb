class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.144.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.144.0/tyler_0.144.0_darwin_arm64.tar.gz"
      sha256 "2912a29fe74f2195e1875a3a1f060b23c1fec8491d20678c0c6951167c395b40"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.144.0/tyler_0.144.0_darwin_amd64.tar.gz"
      sha256 "47649a65f63dad41cb971d9ff7a19318041595ea4bec89a1002cec8fc48f0315"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
