class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.487.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.487.0/tyler_0.487.0_darwin_arm64.tar.gz"
      sha256 "0e62e992a69a41463b823701104c5d0714511694cd1b7a805eb067b840247770"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.487.0/tyler_0.487.0_darwin_amd64.tar.gz"
      sha256 "3127a5a78919afc80b6e59e389751eb2ab70901d1916c39d73901c366a3f44e4"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
