class Tyler < Formula
  desc "Tyler CLI — source-neutral vault-attach engine"
  homepage "https://github.com/JMcunst/tyler-core-dist"
  version "0.426.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.426.0/tyler_0.426.0_darwin_arm64.tar.gz"
      sha256 "26dcea633f8da09268dee0e5bbce42e65292a444145ce91bb0013972a0ea36d8"
    else
      url "https://github.com/JMcunst/tyler-core-dist/releases/download/v0.426.0/tyler_0.426.0_darwin_amd64.tar.gz"
      sha256 "2355db0f54ee849aab4200a2d89e3bd0651a9a100d1dbc8c2fa2df084dff9256"
    end
  end

  def install
    bin.install "tyler"
  end

  test do
    assert_match "Tyler CLI bootstrap", shell_output("#{bin}/tyler --help")
  end
end
