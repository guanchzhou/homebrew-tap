class C3s < Formula
  desc "Kubernetes TUI client"
  homepage "https://github.com/guanchzhou/c3s"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-darwin-arm64.tar.gz"
      sha256 "1d8ab2e147d8decf6bf3578375af63836d86012194d73ddbbe092e3a5844655a"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-darwin-amd64.tar.gz"
      sha256 "c979801a9ca14368c1d62e0d085e4a159fdad3f00c529505899e283859d1fb0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-linux-arm64.tar.gz"
      sha256 "8d386beb7c2cf12b5ea7cd1a792ba9ebad6723e19020fa8732cdedcda40387a7"
    end
    on_intel do
      url "https://github.com/guanchzhou/c3s/releases/download/v#{version}/c3s-#{version}-linux-amd64.tar.gz"
      sha256 "f4eaeab81f9e30ce638832f6c5d4b1a4023ab052c171d1d8e990ff041da8afa7"
    end
  end

  def install
    bin.install "c3s"
  end

  test do
    assert_match "c3s", shell_output("#{bin}/c3s --help")
  end
end
