class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.101.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.101.0/tyler_0.101.0_darwin_arm64.tar.gz"
      sha256 "839fdae7561a59d6ac86b4ccc58ec1372ad3386ec43e63aaf1c5c7eb5b40d375"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.101.0/tyler_0.101.0_darwin_amd64.tar.gz"
      sha256 "ac73bca87f6fae1749bcdf2167115f30a2b751e11f7eafd22ed62be669fa0cff"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
