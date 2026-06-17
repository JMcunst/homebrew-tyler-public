class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.413.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.413.0/tyler_0.413.0_darwin_arm64.tar.gz"
      sha256 "d86645c2f7949654153594c39d986613dd3118c67d0e772e808111285d831c01"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.413.0/tyler_0.413.0_darwin_amd64.tar.gz"
      sha256 "924ee4aaa433c23c4050269c36b7b2f31340c933a8e80c8f4fc377f067f9558c"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
