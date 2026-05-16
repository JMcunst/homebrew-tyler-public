class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.3.9"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.9/tyler_0.3.9_darwin_arm64.tar.gz"
      sha256 "c55d42ad1d339fd87ce2b7ad4fb53b192933d9bc9aedc32b680fb72b166388cf"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.3.9/tyler_0.3.9_darwin_amd64.tar.gz"
      sha256 "849c157dcdf3c68d9755e71ef7918356e3fb1175eb713d06adf1df06b9cef323"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
