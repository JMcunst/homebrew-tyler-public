class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.35.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.35.0/tyler_0.35.0_darwin_arm64.tar.gz"
      sha256 "42eeeed5cd935cf326b8476262b83e136b819542a52461fd7af9059adb4c893f"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.35.0/tyler_0.35.0_darwin_amd64.tar.gz"
      sha256 "e101dd106d4022f4fda615428994d3d49f02a9c2e425d3864c510a5ad4cdc3fb"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
