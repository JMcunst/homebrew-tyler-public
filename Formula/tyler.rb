class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.228.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.228.0/tyler_0.228.0_darwin_arm64.tar.gz"
      sha256 "25011786296bc7f9b3c2d0c374084f022fde2c8e9f9166ebd88c0e97c36cfa45"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.228.0/tyler_0.228.0_darwin_amd64.tar.gz"
      sha256 "d5f56e8591a4ea3c807c33b72b654a2ca5586b0798e7f3016ee05df1ce8b9836"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
