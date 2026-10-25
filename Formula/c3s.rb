class C3s < Formula
  desc "Kubernetes TUI client"
  homepage "https://github.com/guanchzhou/c3s"
  version "0.4.3"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-darwin-arm64.tar.gz"
      sha256 "e8f1de70a0d5adebaac13f92d412752e3b4dfb73891b301524c8761bae311c22"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-darwin-amd64.tar.gz"
      sha256 "01c12716cd49067cff22ac0619203131cdb0d2dc2452caf63d0f8de84bd13c56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-linux-arm64.tar.gz"
      sha256 "dd2f5a34a2d1363774ca14150ca0bec4827ce54ec643c4eed223a2bd2fafa805"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-linux-amd64.tar.gz"
      sha256 "4ad3f6e3e5b0bfab8b7cab4573243952c22cf905b3dc81be8d72061086ed6d98"
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
