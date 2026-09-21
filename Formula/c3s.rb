class C3s < Formula
  desc "Kubernetes TUI client"
  homepage "https://github.com/guanchzhou/c3s"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-darwin-arm64.tar.gz"
      sha256 "46132f3d2fdf08755a331e3388e11f4b69aad8f0f2025ed9d8c64e1fad471d9b"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-darwin-amd64.tar.gz"
      sha256 "5ced95047893566ecddc8853002f8f9506c40234fcf72e0d7338e2215286970f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-linux-arm64.tar.gz"
      sha256 "03ac07d3df591c9cf98759c8b931e4a4b9de8c9a89ccdf58cc67f549893e661d"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-linux-amd64.tar.gz"
      sha256 "189a363d4bab5f2e84f8f3b323484308166ff6e2f3ccaa3864d63b86259a3f0d"
    end
  end

  def install
    bin.install "c3s"
  end

  test do
    assert_match "c3s", shell_output("#{bin}/c3s --help")
  end
end
