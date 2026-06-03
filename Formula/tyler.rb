class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.178.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.178.0/tyler_0.178.0_darwin_arm64.tar.gz"
      sha256 "f4ad2a68e87478dd2ec7b41591269a3080e474a73d08214baf6ea27659181d0c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.178.0/tyler_0.178.0_darwin_amd64.tar.gz"
      sha256 "eb8fd56badab84cb12acf3a9335219afe667175e10d7646433364f5828560713"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
