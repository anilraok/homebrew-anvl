cask "dwani" do
  version "0.1.6"
  sha256 "122acafd4d41eea8349fb36f09d24d7281b113556baa259857da755062980885"

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
