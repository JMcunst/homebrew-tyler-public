class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.414.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.414.0/tyler_0.414.0_darwin_arm64.tar.gz"
      sha256 "1945c92b14151ea6b8bc4d5dc2926493e3e0c795b7786b42751faf56801caacd"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.414.0/tyler_0.414.0_darwin_amd64.tar.gz"
      sha256 "fcc80dbd7d12bd0904a3121bc37938f22baf93782be07c6b25d968b96afbc59b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
