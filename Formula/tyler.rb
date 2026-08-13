class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.124.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.124.0/tyler_2.124.0_darwin_arm64.tar.gz"
      sha256 "135910c2be2303ebcb9dba8c3637e4c557dfad2dfa1f13bd6c5afe9d87389708"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.124.0/tyler_2.124.0_darwin_amd64.tar.gz"
      sha256 "691b978cc9c47c3bcec88d9797b0dae62f1efdaa8fb86cbff1b104bcba9ec871"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
