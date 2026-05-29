class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.91.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.91.0/tyler_0.91.0_darwin_arm64.tar.gz"
      sha256 "826c800b91d88c8422467fb0d7f8e44760cbf981130f3a8afaa343f5bf0261ee"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.91.0/tyler_0.91.0_darwin_amd64.tar.gz"
      sha256 "d8a6fbaae75bc448517183b233363e790c4ea3ab589c8184aa431d3b2cd19bad"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
