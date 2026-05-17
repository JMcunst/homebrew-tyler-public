class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.8.2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.8.2/tyler_0.8.2_darwin_arm64.tar.gz"
      sha256 "95632b2fe0906a87c668380c74834c6d9860d2cbdd4dc45af0f07850cdc99f80"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.8.2/tyler_0.8.2_darwin_amd64.tar.gz"
      sha256 "933c2563c92e3a19bb6ca65ec7b4c05ba792bf0eacf7dc3946332c7a30bc06f6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
