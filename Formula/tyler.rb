class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.57.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.57.0/tyler_0.57.0_darwin_arm64.tar.gz"
      sha256 "e6cbdb97d665c0300f281a921680f0d39aefd222b5d61c358d0aea485055acf1"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.57.0/tyler_0.57.0_darwin_amd64.tar.gz"
      sha256 "80629c60da2e18bf9f0e6ce7be07f9320567076370080ec70e54d28e8aebb6b6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
