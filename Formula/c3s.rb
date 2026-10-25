class C3s < Formula
  desc "Kubernetes TUI client"
  homepage "https://github.com/guanchzhou/c3s"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v0.4.4/c3s-0.4.4-darwin-arm64.tar.gz"
      sha256 "ea536c5e43c2295221b3ef31416bc6089f92e3937ce01b12dd42781e18b896f0"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v0.4.4/c3s-0.4.4-darwin-amd64.tar.gz"
      sha256 "64e52cf73ace46dc15f5435a9958510b2b947c6c5c2772c0b570b0daf62a8294"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v0.4.4/c3s-0.4.4-linux-arm64.tar.gz"
      sha256 "48295a320aa70d048d441c144565b4e1a2cf691629e14e6b8a83989c3ce44e12"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v0.4.4/c3s-0.4.4-linux-amd64.tar.gz"
      sha256 "72b84f6bdf51366765df200ed098cb3c0abd1e60ebc949d01df2fdb2f8cd3de3"
    end
  end

  def install
    libexec.install "c3s", "skins"
    bin.install_symlink libexec/"c3s"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/c3s --version 2>&1")
  end
end
