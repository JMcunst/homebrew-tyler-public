class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.276.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.276.0/tyler_0.276.0_darwin_arm64.tar.gz"
      sha256 "03e28bd112e85dd6e87279ba1455b89ccbcebabecab87b9faf295244667e99f8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.276.0/tyler_0.276.0_darwin_amd64.tar.gz"
      sha256 "df058ce63f78ad4e5d1825a25c48ac6f4917a5e498c14cd4da65bff3ccc2989f"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
