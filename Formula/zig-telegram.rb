class ZigTelegram < Formula
  desc "Zero-dependency Telegram Bot API 10.3 & MTProto 2.0 SDK and CLI in pure Zig"
  homepage "https://github.com/guanchzhou/zig-telegram"
  version "0.1.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/guanchzhou/zig-telegram/releases/download/v#{version}/zig-telegram-#{version}-darwin-arm64.tar.gz"
      sha256 "24e92296836377511774f4484b92bb2a6fd9a0e06c3abc4d87d62fe5d0469944"
    end
    on_intel do
      url "https://github.com/guanchzhou/zig-telegram/releases/download/v#{version}/zig-telegram-#{version}-darwin-amd64.tar.gz"
      sha256 "303edee2ab4f84a78a66ca440870eb000a6a0dbadf8dbd0ad3880c2d5344c848"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guanchzhou/zig-telegram/releases/download/v#{version}/zig-telegram-#{version}-linux-arm64.tar.gz"
      sha256 "bf2a875250d6f0822396dadf09abd746a728f228cc912a1ace3d96304319d944"
    end
    on_intel do
      url "https://github.com/guanchzhou/zig-telegram/releases/download/v#{version}/zig-telegram-#{version}-linux-amd64.tar.gz"
      sha256 "ab3592bfe07d19acd9ebedfa85b631d25b099a9f7d4c536ca4825d9c7c3d1fb6"
    end
  end

  def install
    bin.install "zig-telegram"
  end

  test do
    assert_match "zig-telegram #{version}", shell_output("#{bin}/zig-telegram --version")
  end
end
