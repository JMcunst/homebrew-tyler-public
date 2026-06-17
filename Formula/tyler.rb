class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.398.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.398.0/tyler_0.398.0_darwin_arm64.tar.gz"
      sha256 "46e4e3dbde667236b0e52e8a5449668653d3931fa7037bba0eb784679a0afd1b"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.398.0/tyler_0.398.0_darwin_amd64.tar.gz"
      sha256 "d9d3da8f7171104733784705e03236d351f41f0b2be3da57fc20ebbb51e34bfe"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
