class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.71.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.71.0/tyler_0.71.0_darwin_arm64.tar.gz"
      sha256 "ae686acacd90ae60f3f6b27ab8359354ea1daf277a668909e9b5048409543306"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.71.0/tyler_0.71.0_darwin_amd64.tar.gz"
      sha256 "15245f4f301cebf3e155143ccac87cd1a6c4ee858b45252e75c8fb9216f6ee82"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
