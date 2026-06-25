class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.515.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.515.0/tyler_0.515.0_darwin_arm64.tar.gz"
      sha256 "c0937bad306e8609051bf77e35b060e1d97a4026e2a19b396b482de1ebba3ab7"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.515.0/tyler_0.515.0_darwin_amd64.tar.gz"
      sha256 "4922d1116deb9435cc466c8491931907970fd433ce6a1e4544c7c3a8e090ad23"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
