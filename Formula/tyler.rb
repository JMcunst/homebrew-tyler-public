class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.120.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.120.0/tyler_0.120.0_darwin_arm64.tar.gz"
      sha256 "3b38a6ebda069c44eb9cea256a9de45a507a8d28eeca6b9e541cda232a6895d5"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.120.0/tyler_0.120.0_darwin_amd64.tar.gz"
      sha256 "6d1ac88fb09926801db18f138b226983f05e18f4cf88af8be22ff3190d3a7b7d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
