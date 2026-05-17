class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.9.1"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.1/tyler_0.9.1_darwin_arm64.tar.gz"
      sha256 "5f8d655dfd16df77ffc2ff0384d4974a8f97e625bb1705744fc799cedc553df0"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.1/tyler_0.9.1_darwin_amd64.tar.gz"
      sha256 "1fc4603b3f0e5f22d91a3861f3dc4b6d06fc1471a36b7290552b88ed9f059f60"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
