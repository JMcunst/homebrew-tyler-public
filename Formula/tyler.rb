class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.169.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.169.0/tyler_0.169.0_darwin_arm64.tar.gz"
      sha256 "c42d63cabe105d93ef6d855079ab81dd08b0199081871a55f89346b53155f817"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.169.0/tyler_0.169.0_darwin_amd64.tar.gz"
      sha256 "e85d77e453c2b9c866402ae6da34f270e8ff05e58e50bb273680fd0f33b9ee16"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
