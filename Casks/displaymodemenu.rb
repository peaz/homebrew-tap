cask "displaymodemenu" do
  version "0.2.2"
  sha256 "82a35ae08f8a8a0258af50f11c4fd28a3b898b0e0850b9722b89f37a8692d1e9"

  url "https://github.com/peaz/displaymodemenu/releases/download/v#{version}/DisplayModeMenu-v#{version}.zip"
  name "DisplayMode Menu"
  desc "Menu bar app for switching display resolutions, with Shortcuts integration"
  homepage "https://github.com/peaz/displaymodemenu"

  depends_on macos: :ventura

  app "DisplayModeMenu.app"

  zap trash: "~/Library/Preferences/com.knyc.DisplayModeMenu.plist"
end
