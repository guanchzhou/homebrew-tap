class C3s < Formula
  desc "Kubernetes TUI client"
  homepage "https://github.com/guanchzhou/c3s"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-darwin-arm64.tar.gz"
      sha256 "8707b102c573a08f0a18f386a28a38a7d2662ed2b9171c157dffb044fbe67898"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-darwin-amd64.tar.gz"
      sha256 "29bf23589c1429163944bf421eaea4d662c192f6a4064c1af1e10fd414cfc059"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-linux-arm64.tar.gz"
      sha256 "995508dcd2f7830db85753a06563a86513cc7fc63fcda76a496c641ce478fb71"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-linux-amd64.tar.gz"
      sha256 "0858f1a593fbb83f8289be82b290c8bfc958c9743ddd82c4b5c4f9f3f3272b39"
    end
  end

  def install
    bin.install "c3s"
  end

  test do
    assert_match "c3s", shell_output("#{bin}/c3s --help")
  end
end
