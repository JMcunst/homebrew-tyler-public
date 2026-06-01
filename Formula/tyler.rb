class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.143.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.143.0/tyler_0.143.0_darwin_arm64.tar.gz"
      sha256 "3187e68537f914de70aabe741f14a81b714554da3362060aad9f0e35841150ba"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.143.0/tyler_0.143.0_darwin_amd64.tar.gz"
      sha256 "98403bbb28c80b3e651498956f030fe2e597158905e4e05474c1667640f07c74"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
