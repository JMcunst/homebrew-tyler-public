class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.364.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.364.0/tyler_0.364.0_darwin_arm64.tar.gz"
      sha256 "06ba49e05d5801088e18a3ec3a3fc182b642faed42cdb9da246432dff034ddb4"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.364.0/tyler_0.364.0_darwin_amd64.tar.gz"
      sha256 "eb62b212c7fd133d104893e20c508f2f24a744aa690f624ea3f50ad149d4457f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
