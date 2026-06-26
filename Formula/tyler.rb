class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.545.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.545.0/tyler_0.545.0_darwin_arm64.tar.gz"
      sha256 "d2bd13bb3bf3377929fd2ad66fc2e0a9e6757f25f2246c46fb4d76e058a36ab6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.545.0/tyler_0.545.0_darwin_amd64.tar.gz"
      sha256 "0a623c730bd4b159106757ac5edf13ed088a48bc2017428705d7b5535333cc71"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
