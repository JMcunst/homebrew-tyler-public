class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.428.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.428.0/tyler_0.428.0_darwin_arm64.tar.gz"
      sha256 "4772cbddff9651804bc19b49f511e400d689125dc2917c4ae07b3159f371dbaa"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.428.0/tyler_0.428.0_darwin_amd64.tar.gz"
      sha256 "d4690b4da9a339136c22f470c3a2a4ce1a7cff1dbd9c1f146d8868aedf2de638"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
