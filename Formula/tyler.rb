class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.386.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.386.0/tyler_0.386.0_darwin_arm64.tar.gz"
      sha256 "5f4228c15ba71eafd7b8f055917f389375f5475e09411179f9c337f381b8e7c8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.386.0/tyler_0.386.0_darwin_amd64.tar.gz"
      sha256 "07e8b2b4be616e95761e8cc0462b184669e33027bdd5e199f11892afac9feac5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
