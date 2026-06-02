class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.163.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.163.0/tyler_0.163.0_darwin_arm64.tar.gz"
      sha256 "51af3e9f9f6d67ccc2e36f920ac8c8e63f8456dac5c709cab1317e9223290444"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.163.0/tyler_0.163.0_darwin_amd64.tar.gz"
      sha256 "1e439e8d4e961a755c82fe9d5dd4ed1126a8767da4ae2d4cafdad37a64eb98c3"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
