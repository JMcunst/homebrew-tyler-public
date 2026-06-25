class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.491.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.491.0/tyler_0.491.0_darwin_arm64.tar.gz"
      sha256 "78dd7f6010428f569c4ab088487a9582bb1cfec7f4dea24a73b71845d657967f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.491.0/tyler_0.491.0_darwin_amd64.tar.gz"
      sha256 "d877e84e6f10fadfc87595c59e9fd7280355bd85deb09bd5e8ff5481ded5a97a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
