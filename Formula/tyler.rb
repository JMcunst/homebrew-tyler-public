class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.79.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.79.0/tyler_0.79.0_darwin_arm64.tar.gz"
      sha256 "3551f41186ddc9d100aef86b1aba9e4ee814d24b20af8cde881de57e8b62050e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.79.0/tyler_0.79.0_darwin_amd64.tar.gz"
      sha256 "cc10d373573f53fca47c09e40da6c823172ecb9d63da092eadd211d28b77b628"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
