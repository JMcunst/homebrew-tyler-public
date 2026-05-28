class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.70.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.70.0/tyler_0.70.0_darwin_arm64.tar.gz"
      sha256 "db1f368c158df9c32aabd7f27a0a3977b3a1163c55a456f1b86edaffb5b82b7e"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.70.0/tyler_0.70.0_darwin_amd64.tar.gz"
      sha256 "87e303565d3b14031b51c185a12fada70aec391393ae32d73cc92b4cfcaaff7d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
