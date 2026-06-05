class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.244.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.244.0/tyler_0.244.0_darwin_arm64.tar.gz"
      sha256 "37148fc75b464dfa1e8b1332787d3fe794287689b39a32704f08f572cd81dcf5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.244.0/tyler_0.244.0_darwin_amd64.tar.gz"
      sha256 "92bead69637f21d6e213722e1d0a27a269d4406e042e08e3ea80d3c1c4e786bb"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
