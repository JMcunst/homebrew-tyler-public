class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.62.2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.62.2/tyler_0.62.2_darwin_arm64.tar.gz"
      sha256 "68ae55361614d5d7f752e22aa9258d88a71eae79eb1a30ca9bf272897192fdf5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.62.2/tyler_0.62.2_darwin_amd64.tar.gz"
      sha256 "b009a2de5ea797642fdea393c8cae6373c94b5a73bf81433a4242cdc377b7ca1"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
