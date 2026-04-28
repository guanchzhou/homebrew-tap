cask "threemf" do
  version "1.1.0"
  sha256 "58e55571556f0bafa1db68fe80bfb0c03410afd5cc1bda22137967f89a6f4689"

  url "https://github.com/guanchzhou/threemf/releases/download/v#{version}/threemf.zip"
  name "threemf"
  desc "Quick Look plugin for previewing .3mf and .stl 3D printing files"
  homepage "https://github.com/guanchzhou/threemf"

  depends_on macos: ">= :tahoe"

  app "threemf.app"

  zap trash: [
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.preview",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.thumbnail",
  ]
end
