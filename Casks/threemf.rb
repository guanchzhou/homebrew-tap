cask "threemf" do
  version "1.0.5"
  sha256 "c689da7f517bff0fc11f84f6183c5af4417f41532567ffcc3b82ab24f752f36b"

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
