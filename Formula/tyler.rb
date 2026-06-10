class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.270.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.270.0/tyler_0.270.0_darwin_arm64.tar.gz"
      sha256 "cb85ba34059f77b56027a082e6da285f20858c210c935108a61747f82e4c7e1e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.270.0/tyler_0.270.0_darwin_amd64.tar.gz"
      sha256 "e4210450b95ce75e6af68d0ab98a834d02b3f914630406ec10fbaa9aa5bfa62d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
