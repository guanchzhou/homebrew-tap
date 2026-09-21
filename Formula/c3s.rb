class C3s < Formula
  desc "Kubernetes TUI client"
  homepage "https://github.com/guanchzhou/c3s"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-darwin-arm64.tar.gz"
      sha256 "248629c52bdda7ffc7d689270f8d25eb76a0690a8290f44c5a2f13f9dcd2aa4e"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-darwin-amd64.tar.gz"
      sha256 "7c77eeec46f7e95673f16b85f3154465961a06c930403a5b9b492b051146f294"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-linux-arm64.tar.gz"
      sha256 "2fa14493fc174115edc8309bd56638a448c8a8b7772868964bf500e4d697c177"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-linux-amd64.tar.gz"
      sha256 "e7f71ddb61c140f53f0dfd1d792b7382196978cb9da999ea10ff5d9eb82610c6"
    end
  end

  def install
    bin.install "c3s"
  end

  test do
    assert_match "c3s", shell_output("#{bin}/c3s --help")
  end
end
