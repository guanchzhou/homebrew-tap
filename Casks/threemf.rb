cask "threemf" do
  version "1.0.1"
  sha256 "bb6a7634b15f0b325a1e062f2cf7eab6af5a5fa2395ed9dc811512d77f8128c0"

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
