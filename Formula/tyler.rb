class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.62.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.62.1/tyler_0.62.1_darwin_arm64.tar.gz"
      sha256 "97944d2b73c530035ab797a554c531edea6dee1b1d2a934c61957d0a31a4540c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.62.1/tyler_0.62.1_darwin_amd64.tar.gz"
      sha256 "da8f120f1ad33fd4c627122f81d43baf9529f2e3a269f222620f2e35b59b612f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
