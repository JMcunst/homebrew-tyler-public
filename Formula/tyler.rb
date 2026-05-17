class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.8.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.8.1/tyler_0.8.1_darwin_arm64.tar.gz"
      sha256 "4103950637f663009ba2e60cb898085f5090e2ad7c089560409ea70d73e833d0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.8.1/tyler_0.8.1_darwin_amd64.tar.gz"
      sha256 "47a3396735ddd5466f0e2362341818a8b8ea81fbeb54487d824ebaf7f4a889ef"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
