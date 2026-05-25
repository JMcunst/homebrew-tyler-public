class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.29.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.29.0/tyler_0.29.0_darwin_arm64.tar.gz"
      sha256 "de8a11bd87ec82d6338867a9cc2a43565c6e3c2248712f1e0b7a6ba55659f077"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.29.0/tyler_0.29.0_darwin_amd64.tar.gz"
      sha256 "50bf5fc593fc8c430187bc898b978eb540a8b60c9c66c56632f8abce574ddd84"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
