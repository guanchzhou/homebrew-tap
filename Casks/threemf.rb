cask "threemf" do
  version "1.0.3"
  sha256 "9ff85326def3586a936b9cfb27470fbb712a0ef93e0a5c41942565a63d101a0a"

  url "https://github.com/guanchzhou/threemf/releases/download/v#{version}/threemf.zip"
  name "threemf"
  desc "Quick Look plugin for previewing .3mf and .stl 3D printing files"
  homepage "https://github.com/guanchzhou/threemf"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "threemf.app"

  zap trash: [
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.preview",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.thumbnail",
  ]
end
