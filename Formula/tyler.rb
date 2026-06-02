class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.155.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.155.0/tyler_0.155.0_darwin_arm64.tar.gz"
      sha256 "686a485e673c2890e5716472816680a4cbccf047c309cc5f6e99d947268fa373"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.155.0/tyler_0.155.0_darwin_amd64.tar.gz"
      sha256 "8d17d2b652cba086d812facbd0d46364db42fdf74c1b9913d2525a8538648c24"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
