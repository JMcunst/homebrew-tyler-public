class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.98.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.98.0/tyler_2.98.0_darwin_arm64.tar.gz"
      sha256 "e4386368a9239974b73ff67d48ac8d2f3240696c4315eee2353349f566a861f7"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.98.0/tyler_2.98.0_darwin_amd64.tar.gz"
      sha256 "264614bb71fb80f6531a6cbdb54b797ab2dec134f694c8f22da92086a6615bb0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
