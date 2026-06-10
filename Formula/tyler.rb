class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.272.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.272.0/tyler_0.272.0_darwin_arm64.tar.gz"
      sha256 "170d56fc3a543c0d984483dace106cfac425deea9b601abe0530083184561f3a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.272.0/tyler_0.272.0_darwin_amd64.tar.gz"
      sha256 "8c87e11963de5b24b983419c6a7798085bea2463501154de4bfb097a6d02b8e4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
