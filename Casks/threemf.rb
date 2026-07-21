cask "threemf" do
  version "1.4.0"
  sha256 "f54016c8ecb9a2e1aeaa19e15a853151937ca6ae1d612af3c61e7602136900a1"

  url "https://github.com/guanchzhou/threemf/releases/download/v#{version}/threemf.zip"
  name "threemf"
  desc "Quick Look plugin for previewing .3mf, .stl, and .gcode 3D printing files"
  homepage "https://github.com/guanchzhou/threemf"

  depends_on macos: :sonoma

  # Remove any unmanaged /Applications/threemf.app left behind by manual installs
  # (drag-and-drop from a release zip, local xcodebuild output, etc.) so the
  # subsequent install step doesn't error with "It seems there is already an App at…".
  # On a clean upgrade flow this is a no-op because brew has already uninstalled.
  preflight do
    installed = "/Applications/threemf.app"
    if File.exist?(installed)
      system_command "/bin/rm", args: ["-rf", installed], sudo: false
    end
  end

  app "threemf.app"

  zap trash: [
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.preview",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.thumbnail",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.findersync",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.mdimporter",
  ]
end
