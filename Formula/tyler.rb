class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.576.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.576.0/tyler_0.576.0_darwin_arm64.tar.gz"
      sha256 "a6dcde452e56a6df82718a914f9ccb808c16f6d74b691c3e255e8495c52ebacf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.576.0/tyler_0.576.0_darwin_amd64.tar.gz"
      sha256 "e445c2fafdecfd9db7cd960266ae617bb57d3f875de88e546b2cc5908cb9bd38"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
