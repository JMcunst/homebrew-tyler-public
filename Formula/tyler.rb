class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.218.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.218.0/tyler_0.218.0_darwin_arm64.tar.gz"
      sha256 "34b8e3bdb70a56c452db59380e994832ee200a83fe0d64308fb460eaddd6d914"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.218.0/tyler_0.218.0_darwin_amd64.tar.gz"
      sha256 "7bce6b748aa19c4cf5dc754d04ef7a9f640516bc0e7f78d3c78bf46c54a26ff0"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
