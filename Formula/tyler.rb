class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.101.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.101.0/tyler_2.101.0_darwin_arm64.tar.gz"
      sha256 "c2a4ccdf4913973f3f659c3bd5566505c058baf525716ab9b7c1ac38ee9c24ca"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.101.0/tyler_2.101.0_darwin_amd64.tar.gz"
      sha256 "33602204ef1fe4fa5bfcb42ea5f48c5fef6e9c9fbd0d5e76b6eb4ed10a86876b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
