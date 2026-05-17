class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.14"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.14/tyler_0.3.14_darwin_arm64.tar.gz"
      sha256 "3350873d519ef062b735fa0f6f5c52ac3a8bd20f866768a8b7b210f88165d813"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.14/tyler_0.3.14_darwin_amd64.tar.gz"
      sha256 "30243dde2793022ab815fe91734335172b14cd7bfc003df484d6e93525562748"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
