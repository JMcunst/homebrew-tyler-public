class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.89.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.89.0/tyler_2.89.0_darwin_arm64.tar.gz"
      sha256 "97f8a7ed87c8d92e7758ba4db961d6cf83ad6fef726870082aa6840d9637e172"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.89.0/tyler_2.89.0_darwin_amd64.tar.gz"
      sha256 "baaf34af3b0d37974e6f13412353c7456512bb63f8a0b6cf89c6cdc9305da896"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
