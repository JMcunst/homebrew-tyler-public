class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.536.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.536.0/tyler_0.536.0_darwin_arm64.tar.gz"
      sha256 "83f01f9fd7f09e8d1bbd946a65926ff221f55b9a3c59ac5526e9df7b1709b157"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.536.0/tyler_0.536.0_darwin_amd64.tar.gz"
      sha256 "b535cd01931a915ef40063ae6a022514eac36b0fdb85e3b7624197dfba724e85"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
