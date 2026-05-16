class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.7"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.7/tyler_0.3.7_darwin_arm64.tar.gz"
      sha256 "cc0b6153829d10b7a9418579c5edd6684eb42c346e9f623c3ce6db54b0d1d9ab"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.7/tyler_0.3.7_darwin_amd64.tar.gz"
      sha256 "37ad01e5d889ad3c42038e21207d6d8b2d88abb03d2e3379f8b773b7e4734249"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
