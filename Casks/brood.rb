cask "brood" do
  version "0.2.4"
  sha256 "342071e977e4f560018d17c1d59adfe7999ecc5f5ff730692f5e7b28519f92c9"

  url "https://github.com/kevinshowkat/brood/releases/download/v#{version}/Brood_#{version}_universal.dmg"
  name "Brood"
  desc "Reference-first AI image editing desktop for developers"
  homepage "https://github.com/kevinshowkat/brood"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Brood.app"

  zap trash: [
    "~/.brood",
    "~/Library/Caches/com.brood.app",
    "~/Library/Preferences/com.brood.app.plist",
    "~/Library/Saved Application State/com.brood.app.savedState",
  ]
end
