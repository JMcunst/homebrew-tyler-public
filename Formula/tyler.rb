class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.171.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.171.0/tyler_0.171.0_darwin_arm64.tar.gz"
      sha256 "0f579152d94acd45bb1a77cb2375c438bf057561b09e0d54d97de5742f9b7f58"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.171.0/tyler_0.171.0_darwin_amd64.tar.gz"
      sha256 "cdbcc49c38202daf61a5f4325f9b9ba12ff0177d827e02d187c3d9e160ebad14"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
