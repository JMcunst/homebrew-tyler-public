class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.191.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.191.0/tyler_0.191.0_darwin_arm64.tar.gz"
      sha256 "ef61bd90905343bd01f381ae064c06149520e3dac8dcf972f51b4e7d3c5646d4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.191.0/tyler_0.191.0_darwin_amd64.tar.gz"
      sha256 "b02452d3dfaae96e9adff38e16d5dfa5158c0ce34d6584f072c0187d20d9327f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
