class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.590.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.590.0/tyler_0.590.0_darwin_arm64.tar.gz"
      sha256 "0ab703ded4f49be90d8ea7738646802308d86d09450637d4ff2d8cc9553ae70d"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.590.0/tyler_0.590.0_darwin_amd64.tar.gz"
      sha256 "4dd0f058ef1f04eb5b5a5a037d2154b518bbf763a10e6eb6fe8a5fdefc2a6127"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
