class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.117.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.117.0/tyler_0.117.0_darwin_arm64.tar.gz"
      sha256 "df74c984163fd7805ff2cd4fd9e5faebfde49da36d606e58790f871b9c3e76b6"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.117.0/tyler_0.117.0_darwin_amd64.tar.gz"
      sha256 "a524ca3e215ea7bf4964204bf72e46a52d17671dfb6e4a50b548fafdcefd84eb"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
