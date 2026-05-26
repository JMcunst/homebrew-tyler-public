class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.59.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.59.0/tyler_0.59.0_darwin_arm64.tar.gz"
      sha256 "7d9ea1186b5776d761500ac5434608156aa49287e3c73756c4cf017df4af0fcd"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.59.0/tyler_0.59.0_darwin_amd64.tar.gz"
      sha256 "f5c16d97ca77a4d5a40b0af4c987129fb1e7095740f992c4f970e1832c7775eb"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
