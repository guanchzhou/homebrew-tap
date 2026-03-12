cask "threemf" do
  version "1.0.0"
  sha256 "efb117b0bb1c4603055449fdb93b2343554ca47c65764ab73f3b0487d2a6dada"

  url "https://github.com/guanchzhou/threemf/releases/download/v#{version}/threemf.zip"
  name "threemf"
  desc "Quick Look plugin for previewing .3mf 3D printing files"
  homepage "https://github.com/guanchzhou/threemf"

  depends_on macos: ">= :sonoma"

  app "threemf.app"

  zap trash: [
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.preview",
    "~/Library/Containers/com.andreymaltsev.3mf-quicklook.thumbnail",
  ]
end
