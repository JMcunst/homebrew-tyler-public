class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.64.4"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.64.4/tyler_0.64.4_darwin_arm64.tar.gz"
      sha256 "7eafd5253fe9112c705f435c97c410ebeb252252f81628972505dca649358391"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.64.4/tyler_0.64.4_darwin_amd64.tar.gz"
      sha256 "ac33618468a5d277f784f14df91c7111854b9130ee915c17b4172da6d7d5af10"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
