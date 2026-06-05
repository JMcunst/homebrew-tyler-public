class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.227.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.227.0/tyler_0.227.0_darwin_arm64.tar.gz"
      sha256 "6a4593da873a02576cba12f241d6c72ddd92eb98a7b9965727ca5813c23172ff"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.227.0/tyler_0.227.0_darwin_amd64.tar.gz"
      sha256 "51100a7cec57e66db6d03726f3bcf2fd6f78d7d6ae6245f150250b7649cb224b"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
