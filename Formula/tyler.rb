class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.447.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.447.0/tyler_0.447.0_darwin_arm64.tar.gz"
      sha256 "0b881dbb2ad175b6c5844fc318528148674ae13745ce6783d61587f3ed3446bc"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.447.0/tyler_0.447.0_darwin_amd64.tar.gz"
      sha256 "04ef23325a426865209d7e7c72ac9d0d610f338948dba0154eb81e76a01d736e"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
