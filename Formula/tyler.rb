class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.0.0-public-staging-202604301753"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.0.0-public-staging-202604301753/tyler_0.0.0-public-staging-202604301753_darwin_arm64.tar.gz"
      sha256 "e0bafc9f35f815fc4aed708bc6cd52e55d5719de08c1a218668b7fbbf755f753"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.0.0-public-staging-202604301753/tyler_0.0.0-public-staging-202604301753_darwin_amd64.tar.gz"
      sha256 "72d47e202140972c882f9998bea60bb78f863bdfcb0e89846a4595bb60bf7518"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
