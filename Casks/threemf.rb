cask "threemf" do
  version "1.5.2"
  sha256 "5857a648aaa2a2a5cb43dc3cb4d2aaf2bab6727518f8c397766c9410eda5295d"

  url "https://github.com/guanchzhou/threemf/releases/download/v#{version}/threemf.zip"
  name "threemf"
  desc "Quick Look plugin for previewing .3mf, .stl, and .gcode 3D printing files"
  homepage "https://github.com/guanchzhou/threemf"

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
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.findersync",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.mdimporter",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.preview",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.thumbnail",
  ]
end
