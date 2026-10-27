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
      url "https://github.com/guanchzhou/c3s/releases/download/v0.5.0/c3s-0.5.0-darwin-arm64.tar.gz"
      sha256 "17071de200af63a844770bab134cc045deb715fc927f8c8b0be3bcd6b4eb9fb1"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v0.5.0/c3s-0.5.0-darwin-amd64.tar.gz"
      sha256 "3b9148d9e910e857bc8cbdc507f4477b759319578fa914eaf38b5f0186f9f891"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v0.5.0/c3s-0.5.0-linux-arm64.tar.gz"
      sha256 "faa0b80f32663261e5e9ffd3ab38ad0a05f6b8c813dfe536fcf534670cccb940"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v0.5.0/c3s-0.5.0-linux-amd64.tar.gz"
      sha256 "f2be3e873e700d6f8db392eb1e1936e554cf05b91789c6ecb11b2611a51ab5b9"
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
