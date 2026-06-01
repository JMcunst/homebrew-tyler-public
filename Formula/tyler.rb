class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.94.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.94.0/tyler_0.94.0_darwin_arm64.tar.gz"
      sha256 "451ad7bf22134a0e1df03b35e8e5d5e629496d920d6a34ed652c11279fcdccc9"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.94.0/tyler_0.94.0_darwin_amd64.tar.gz"
      sha256 "d25bc92b76d43ae2af4b8ba3243f9dba244842bd4e467504d07ce711632ef15b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
