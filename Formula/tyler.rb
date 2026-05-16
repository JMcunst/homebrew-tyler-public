class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.4"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.4/tyler_0.3.4_darwin_arm64.tar.gz"
      sha256 "50247b8efb6fa98daeee5c9458388316677d700ff943afffcb788aadef5cf9b0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.4/tyler_0.3.4_darwin_amd64.tar.gz"
      sha256 "26abdcba40786a43863d79fe91048b99e332989e504f9818f263c0969b945cdb"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
