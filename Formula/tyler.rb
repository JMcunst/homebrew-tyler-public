class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-dist"
  version "2.112.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.112.0/tyler_2.112.0_darwin_arm64.tar.gz"
      sha256 "90ea36cec2092bbdc6564f2933c88da215f223347a53e8f5ffa691d40d3417a9"
    else
      url "https://github.com/JMcunst/tyler-dist/releases/download/v2.112.0/tyler_2.112.0_darwin_amd64.tar.gz"
      sha256 "cf38ebdebbc3b7ec773173a1f4e16e6a1cfec08aa2abaf5b61843c904d3efa95"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
