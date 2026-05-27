class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.64.2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.64.2/tyler_0.64.2_darwin_arm64.tar.gz"
      sha256 "41a8af90fc1c2722de9341d19367ed59373f1f4e4e9286ed5fb74d6ec68b3a38"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.64.2/tyler_0.64.2_darwin_amd64.tar.gz"
      sha256 "2079cc5ccd8f523d0617fc95c8e57455532bbee73ffbc9b23dec055d54ed9a43"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
