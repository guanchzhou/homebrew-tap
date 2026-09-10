class C3s < Formula
  desc "Kubernetes TUI client"
  homepage "https://github.com/guanchzhou/c3s"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-darwin-arm64.tar.gz"
      sha256 "c0c7271d07a92d380e51b64c96fefce8c1e38637dfc3e56cdf27b7279340e7d1"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-darwin-amd64.tar.gz"
      sha256 "74245046810206d83f131fdea94129c5948dd38f5494e41682b7d07c8195479d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-linux-arm64.tar.gz"
      sha256 "3eeed4f74c15c82ecb84fdb1181959eb031c5fc1e1bff58edf630a0425fdc6df"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-linux-amd64.tar.gz"
      sha256 "2caac14aede828071fa38c12e32adafbbe23d54f381b82c6da19868824ee9af3"
    end
  end

  def install
    bin.install "c3s"
  end

  test do
    assert_match "c3s", shell_output("#{bin}/c3s --help")
  end
end
