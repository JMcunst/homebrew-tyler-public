class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.215.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.215.0/tyler_0.215.0_darwin_arm64.tar.gz"
      sha256 "b1b3c7bfb7ca74f63af7ae01ed8d219ffffacd3d3d3519c1a96a9ff55f1b5eba"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.215.0/tyler_0.215.0_darwin_amd64.tar.gz"
      sha256 "cdd4b8ded5482229a58c4cdc74c02dbc3cec2037f97aa527a417ba920107f57b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
