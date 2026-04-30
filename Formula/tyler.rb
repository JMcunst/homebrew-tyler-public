class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.1.5"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.1.5/tyler_0.1.5_darwin_arm64.tar.gz"
      sha256 "d263e8c61a7301e9d4b9ced05edcc121942454308145d065c069f18667e29da8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.1.5/tyler_0.1.5_darwin_amd64.tar.gz"
      sha256 "e8e4b340b627a5b7de90c1c0410c3027a794fe81f6cb1b0d4091b07ebdb6d808"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
