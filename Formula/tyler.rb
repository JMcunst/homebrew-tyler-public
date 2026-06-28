class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.571.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.571.0/tyler_0.571.0_darwin_arm64.tar.gz"
      sha256 "59f84d9142e9cf1f33fa67c2460240b4ee1821463cbe3e0c921d25634cf8aa33"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.571.0/tyler_0.571.0_darwin_amd64.tar.gz"
      sha256 "6ccb0861cb88852cbe0d617a38d8fc943977dbc203603255489f41f8d0fce811"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
