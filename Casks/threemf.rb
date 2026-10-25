cask "threemf" do
  version "1.6.1"
  sha256 "e2857554c0c08e7413782054e8d709e18c69c2ca19109deee2aacec8250009b4"

  url "https://github.com/guanchzhou/threemf/releases/download/v#{version}/threemf.zip"
  name "threemf"
  desc "Quick Look plugin for previewing .3mf, .stl, and .gcode 3D printing files"
  homepage "https://github.com/guanchzhou/threemf"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "threemf.app"

  # Remove any unmanaged /Applications/threemf.app left behind by manual installs
  # (drag-and-drop from a release zip, local xcodebuild output, etc.) so the
  # subsequent install step doesn't error with "It seems there is already an App at…".
  # On a clean upgrade flow this is a no-op because brew has already uninstalled.
  preflight_steps do
    remove "threemf.app", base: :appdir, recursive: true
  end

  zap trash: [
    "~/Library/Application Scripts/com.andreymaltsev.3mf-quicklook",
    "~/Library/Application Scripts/com.andreymaltsev.3mf-quicklook.findersync",
    "~/Library/Application Scripts/com.andreymaltsev.3mf-quicklook.mdimporter",
    "~/Library/Application Scripts/com.andreymaltsev.3mf-quicklook.preview",
    "~/Library/Application Scripts/com.andreymaltsev.3mf-quicklook.thumbnail",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.findersync",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.mdimporter",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.preview",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.thumbnail",
  ]
end
