cask "dwani" do
  version "0.1.4"
  sha256 "c24ec807912138ee3c3fdcf5d10160b434560baee8e30e9ffc44bf9de328a708"

  url "https://dl.dwani.app/Dwani-#{version}.dmg"
  name "Dwani"
  desc "Push-to-talk voice dictation utility for macOS"
  homepage "https://dwani.app/"

  livecheck do
    skip "No livecheck source yet — bump manually on each release"
  end

  depends_on macos: ">= :sonoma"

  app "Dwani.app"

  zap trash: [
    "~/Library/Application Support/Chime",
    "~/Library/Preferences/dev.anilrao.dwani.plist",
    "~/Library/Caches/dev.anilrao.dwani",
    "~/Library/Saved Application State/dev.anilrao.dwani.savedState",
  ]
end
