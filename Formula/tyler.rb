class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.481.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.481.0/tyler_0.481.0_darwin_arm64.tar.gz"
      sha256 "489de98faad1826aaa042f303c824fcfb3522f3f3fd1fda477e74df49eaf5dde"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.481.0/tyler_0.481.0_darwin_amd64.tar.gz"
      sha256 "65dfecdc436f593c679bace6e6831eef1c535ac31b04c7018bb30faa36ee15f5"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
