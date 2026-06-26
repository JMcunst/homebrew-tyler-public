class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.544.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.544.0/tyler_0.544.0_darwin_arm64.tar.gz"
      sha256 "15243ec1780ceba54bad3086d20cb0a15adc13fba2e25c261ba35385ab97e54c"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.544.0/tyler_0.544.0_darwin_amd64.tar.gz"
      sha256 "c3c619b77780fbea93572c79c3dbad8d36db7bbd4601c5ce7c91d3c77f4f523d"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
