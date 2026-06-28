class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.569.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.569.0/tyler_0.569.0_darwin_arm64.tar.gz"
      sha256 "46c58602b5a25aa7b4a528024f7f6f4d8cffdbe8f3fd6f0b44e89b98b22a0a55"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.569.0/tyler_0.569.0_darwin_amd64.tar.gz"
      sha256 "7fbefab6931f4ca691ea5b7c79d6679c37fbeb4b652d86ff59d35976af83e8cf"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
