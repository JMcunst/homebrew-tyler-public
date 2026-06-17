class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.397.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.397.0/tyler_0.397.0_darwin_arm64.tar.gz"
      sha256 "66363699dba1df4423fa781fe5d1e597df99e0d102b6f4e4e8e9a8a05b5e2bf8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.397.0/tyler_0.397.0_darwin_amd64.tar.gz"
      sha256 "44934b41419e176f52ced7175bf234e0aef21a5ee40c5b68b079930facadfe5d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
