class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.434.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.434.0/tyler_0.434.0_darwin_arm64.tar.gz"
      sha256 "f3c3fdc64df723e3dea2a81929f39ab73db97046f7ef3dd30df4f3bb5cb87424"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.434.0/tyler_0.434.0_darwin_amd64.tar.gz"
      sha256 "89718c7679ad91deeee67116b73551d08062c9226b1b2c6bd1590f886b668921"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
