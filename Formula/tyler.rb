class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.607.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.607.0/tyler_0.607.0_darwin_arm64.tar.gz"
      sha256 "6969eab7a2b3bbd7bb7583d5be2cfd8656fcff3ff7048e5771a474488043f0d2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.607.0/tyler_0.607.0_darwin_amd64.tar.gz"
      sha256 "b26428bb86824e82e3e69d51936612deeb716234ef7f16ac542c8883f8128d76"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
