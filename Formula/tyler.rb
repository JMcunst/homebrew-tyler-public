class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.475.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.475.0/tyler_0.475.0_darwin_arm64.tar.gz"
      sha256 "af46f9f427bdfe3d59b2e975ef6ab6d57ad5c70f4b16154cb2a76b16f9e18766"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.475.0/tyler_0.475.0_darwin_amd64.tar.gz"
      sha256 "7734abe8352217c568be56cd53caf45fd02d21359bc6bf92f2c9536659577c72"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
