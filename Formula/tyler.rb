class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.503.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.503.0/tyler_0.503.0_darwin_arm64.tar.gz"
      sha256 "0cec009d0731380d3bdc1c79ae92ffbc8dfa1084d9aa8caea81b7e6074599f40"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.503.0/tyler_0.503.0_darwin_amd64.tar.gz"
      sha256 "53b2d4be87427a2f34dbe3f543e015e065713b0a0a8823afd9afc829678e4944"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
