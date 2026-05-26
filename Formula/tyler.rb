class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.51.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.51.0/tyler_0.51.0_darwin_arm64.tar.gz"
      sha256 "fa874c46ab73efe8515b8da5a58a0052e4440a1d9f0dd05e952a6bfbe5d75841"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.51.0/tyler_0.51.0_darwin_amd64.tar.gz"
      sha256 "da2b8717abe38b9d92d93a57afcec8fde976078ff228df5cb28e1d30f5ab2cc5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
