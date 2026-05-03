cask "threemf" do
  version "1.3.0"
  sha256 "f088f23a3f5f2b74e958313cbb76b4997b5f904d16b9522c5989c52194086f68"

  url "https://github.com/guanchzhou/threemf/releases/download/v#{version}/threemf.zip"
  name "threemf"
  desc "Quick Look plugin for previewing .3mf and .stl 3D printing files"
  homepage "https://github.com/guanchzhou/threemf"

  depends_on macos: ">= :sonoma"

  app "threemf.app"

  zap trash: [
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.preview",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.thumbnail",
  ]
end
