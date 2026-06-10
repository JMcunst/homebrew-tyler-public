class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.269.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.269.0/tyler_0.269.0_darwin_arm64.tar.gz"
      sha256 "69a1ec56d617a437429aebcbb26bb066ec618a70eaadf6f7d366a8b6ac93f4e8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.269.0/tyler_0.269.0_darwin_amd64.tar.gz"
      sha256 "9ff3d16b7723bd7b905bcb093ce57323c526592bb69fa4f3009ed14a72b86cf6"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
