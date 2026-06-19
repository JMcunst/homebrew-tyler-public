class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.450.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.450.0/tyler_0.450.0_darwin_arm64.tar.gz"
      sha256 "a636e4ed32f39a1f32cd139a7ce012cfb28f1a438ecf16024aeb5fe0fd300d7c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.450.0/tyler_0.450.0_darwin_amd64.tar.gz"
      sha256 "eb8a35e8da9559e2016185de2d015c1ea35f72ea9493b52047540db930e4d1dd"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
