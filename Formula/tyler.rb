class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.279.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.279.0/tyler_0.279.0_darwin_arm64.tar.gz"
      sha256 "7e20e95c66932b31ff78b6a16ca1fc8af2a39986879ca89cf7a61850b48bba2a"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.279.0/tyler_0.279.0_darwin_amd64.tar.gz"
      sha256 "8d3dda5ceac9960152b4f9867a317715d51d7d0b693cbff9c820be105fcc0990"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
