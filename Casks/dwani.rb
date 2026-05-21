cask "dwani" do
  version "0.1.3"
  sha256 "1a18d918066a6b90a3f2f4971ce8c9de1eeed0450a13bb6ffe375bf3ac316126"

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
