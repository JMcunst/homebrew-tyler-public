class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.245.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.245.0/tyler_0.245.0_darwin_arm64.tar.gz"
      sha256 "81f3214e69a8cb2213795f3a858f8b82223f108a90e6b7c365852c38cb843ba2"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.245.0/tyler_0.245.0_darwin_amd64.tar.gz"
      sha256 "09ccd296b1860769c3a1ec5f3d8aed9cc0f327541e49e5178ef148c29b871d27"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
