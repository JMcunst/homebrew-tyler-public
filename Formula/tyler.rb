class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.371.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.371.0/tyler_0.371.0_darwin_arm64.tar.gz"
      sha256 "4e864d060dd327d1959bb79ec3b51a7321f1f671bb88136e14e4e73b43307815"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.371.0/tyler_0.371.0_darwin_amd64.tar.gz"
      sha256 "db6013611044ba83593b37da160bea93d691f7f3fd668a4618d2fd268175170e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
