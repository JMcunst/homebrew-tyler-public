class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.448.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.448.0/tyler_0.448.0_darwin_arm64.tar.gz"
      sha256 "2fe7acae2a61dce038de3f902ede285427c76fdfe141219b940ae1c796c9ebab"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.448.0/tyler_0.448.0_darwin_amd64.tar.gz"
      sha256 "c840e64b49bc169d8648d62747045be121484488870ebd895dae3e8671499566"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
