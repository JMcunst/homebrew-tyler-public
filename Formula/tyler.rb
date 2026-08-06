class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.97.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.97.0/tyler_2.97.0_darwin_arm64.tar.gz"
      sha256 "4da479e27198578a518f36a24afe09865608d2ae2a048f75bea0556361063fc5"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.97.0/tyler_2.97.0_darwin_amd64.tar.gz"
      sha256 "222cfeee2a7cbacda516614d7289905f08fb7ae4aaa8de07fe2ae303654b0182"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
