class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.83.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.83.0/tyler_0.83.0_darwin_arm64.tar.gz"
      sha256 "f417ccee9ca9cb1308403a4b2e87ddca018c6011de2293471b03cd0819a94f12"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.83.0/tyler_0.83.0_darwin_amd64.tar.gz"
      sha256 "933600d0aee85829872db1a8dfa9379771f298a7aee7186a77bc272b462f9470"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
