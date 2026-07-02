class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.605.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.605.0/tyler_0.605.0_darwin_arm64.tar.gz"
      sha256 "0667ceb2f73355a97a8c79c8b8f01887231ff95b618e7f734130ee5e2dd3daab"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.605.0/tyler_0.605.0_darwin_amd64.tar.gz"
      sha256 "b45625093a599f0663d9f75a067c5eada90292437225be9814cb2b6c2392d928"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
