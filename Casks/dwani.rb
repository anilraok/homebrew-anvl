cask "dwani" do
  version "0.1.5"
  sha256 "4e0a93a1b6a8533ad87123930c39d6ed2bfab80979dccb045aab49d480796c0b"

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
