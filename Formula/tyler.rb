class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.564.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.564.0/tyler_0.564.0_darwin_arm64.tar.gz"
      sha256 "98119e747f28ec619807ce6069676e985d89002c46ce508daef2e7f2484a3645"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.564.0/tyler_0.564.0_darwin_amd64.tar.gz"
      sha256 "2f5619e47bb1306d7886d2f6c0e969b9a24850333f8097488610500522227a7e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
