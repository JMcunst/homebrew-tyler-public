class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.511.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.511.0/tyler_0.511.0_darwin_arm64.tar.gz"
      sha256 "0412ee387b5d6ae232282b5a7ec09571192a14f93b7a78808f3696cf089f510a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.511.0/tyler_0.511.0_darwin_amd64.tar.gz"
      sha256 "b4c8705979dd0c75451a517710569184a89022b73f6d713c8d561fd356335aee"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
