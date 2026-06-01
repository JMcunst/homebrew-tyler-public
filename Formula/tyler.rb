class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.106.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.106.0/tyler_0.106.0_darwin_arm64.tar.gz"
      sha256 "e76408694cfd277a6f7ee461c360a50626321a983655cbac0a67a2ba6cb40654"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.106.0/tyler_0.106.0_darwin_amd64.tar.gz"
      sha256 "b91893307e12272356c6925c6a976a9160e5092c903fa483849e8f2ca809a648"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
