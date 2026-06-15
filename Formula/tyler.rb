class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.353.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.353.1/tyler_0.353.1_darwin_arm64.tar.gz"
      sha256 "d48d1f7126a3e80cb3bb6a5e340b12cb72aa3e540154f6f872f885a9214e3988"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.353.1/tyler_0.353.1_darwin_amd64.tar.gz"
      sha256 "edbeff7005aa668e07a6033a387d7e9edfacf9ba81a6bc4af7d1ddaa16252e19"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
