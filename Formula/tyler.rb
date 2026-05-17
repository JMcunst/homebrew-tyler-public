class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.9.2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.2/tyler_0.9.2_darwin_arm64.tar.gz"
      sha256 "bc8ad136b60b04f145136d71e31adca3adf0f16aaaa6781b049071ceeedb0a1c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.9.2/tyler_0.9.2_darwin_amd64.tar.gz"
      sha256 "a889ce9d1e070cbb308cf6ee88ad07a17d1e97c157ec754f3e87d994086bab6a"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
