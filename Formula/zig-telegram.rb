class ZigTelegram < Formula
  desc "Zero-dependency Telegram Bot API 10.3 & MTProto 2.0 SDK and CLI in pure Zig"
  homepage "https://github.com/guanchzhou/zig-telegram"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/guanchzhou/zig-telegram/releases/download/v0.1.1/zig-telegram-0.1.1-darwin-arm64.tar.gz"
      sha256 "d214dc6537814132ba5f960f2518f627003ac7fbcf57d9bc0cb0a044a81cd1ea"
    end
    on_intel do
      url "https://github.com/guanchzhou/zig-telegram/releases/download/v0.1.1/zig-telegram-0.1.1-darwin-amd64.tar.gz"
      sha256 "0a85aa165d3d1d8a952074f142f8615ec6590d6250eaf3835f57006c67d9cb7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guanchzhou/zig-telegram/releases/download/v0.1.1/zig-telegram-0.1.1-linux-arm64.tar.gz"
      sha256 "7632ad52b448e7142d2ed65d72098a43e78cf5891a3dfc0e6526ae424387a53d"
    end
    on_intel do
      url "https://github.com/guanchzhou/zig-telegram/releases/download/v0.1.1/zig-telegram-0.1.1-linux-amd64.tar.gz"
      sha256 "b6303c5c1ae6509519516cd9e02f953a54117c76456fe09ff13774c2510fa122"
    end
  end

  def install
    bin.install "zig-telegram"
  end

  test do
    assert_match "zig-telegram #{version}", shell_output("#{bin}/zig-telegram --version")
  end
end
