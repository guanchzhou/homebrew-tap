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
      url "https://github.com/guanchzhou/c3s/releases/download/v0.5.1/c3s-0.5.1-darwin-arm64.tar.gz"
      sha256 "5beb95b48995415dcdc5ba7fa698b61f7041b8c22928d0f26aa525a030616eb6"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v0.5.1/c3s-0.5.1-darwin-amd64.tar.gz"
      sha256 "d6ed9c0e0800ed036d39d769304f38c6974cc7dda307be0234e7459ed322ff81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v0.5.1/c3s-0.5.1-linux-arm64.tar.gz"
      sha256 "8bcd799f2e4f88e8fcce31923204b719b35f2b1991c254d43b8733be16bcb5ba"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v0.5.1/c3s-0.5.1-linux-amd64.tar.gz"
      sha256 "48d6d6fc36c2d349195478208e6c07023dcea8d24ef6622ae48dea31b955536e"
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
