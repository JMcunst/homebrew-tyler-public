class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.259.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.259.0/tyler_0.259.0_darwin_arm64.tar.gz"
      sha256 "53bf2688f8950075accbb1bd5309a322e38a33b6f3c89665ce7cf8ec3b88dad1"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.259.0/tyler_0.259.0_darwin_amd64.tar.gz"
      sha256 "8001b74b8002878f289a76048483a307f10a6ce6e3fc1b72fbd0b5cead8434fd"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
