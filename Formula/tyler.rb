class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.200.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.200.0/tyler_0.200.0_darwin_arm64.tar.gz"
      sha256 "6da38b121f483d57d57373dc9bb08ced5ce6091f015dc3476a454939c18dec96"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.200.0/tyler_0.200.0_darwin_amd64.tar.gz"
      sha256 "f1c86dc72d70440b97770ab6b3a4a359a0066c05a43a5a073a738bc900580553"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
