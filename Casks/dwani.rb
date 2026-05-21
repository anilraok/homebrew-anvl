cask "dwani" do
  version "0.1.2"
  sha256 "bfb6e62c57e8420da4659a73850bb922f2be09e967c0a2c4cbbda4413ac57be5"

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
