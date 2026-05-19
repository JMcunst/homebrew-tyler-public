class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.25.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.25.0/tyler_0.25.0_darwin_arm64.tar.gz"
      sha256 "966ac3ecac4c31a9af1bcf3940f42406060dfd11fcafaa5cbbc6223b4ee62639"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.25.0/tyler_0.25.0_darwin_amd64.tar.gz"
      sha256 "236576119f387c7d0ed5ebbbdfa86223606a9b7dc024704a5545637d1efab2d3"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
