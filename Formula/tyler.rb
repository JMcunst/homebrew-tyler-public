class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.247.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.247.0/tyler_0.247.0_darwin_arm64.tar.gz"
      sha256 "3b3601e13bf803c4e49030e9e3f9c99632b4a07c2ca38f929171c89a3a110f93"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.247.0/tyler_0.247.0_darwin_amd64.tar.gz"
      sha256 "521c3eae633c2ddf8a3075f15fcad130749d31c3193f833982794259977afd53"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
