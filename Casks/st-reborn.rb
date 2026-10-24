cask "st-reborn" do
  version "1.0.22"
  sha256 "afb4ec07384255fda27624bc9c5e404ef889c6c5e373f875cdd5d584e381faaa"

  url "https://github.com/JRpersonal/streborn/releases/download/v#{version}/STR-macOS.dmg",
      verified: "github.com/JRpersonal/streborn/"
  name "ST Reborn"
  desc "Cloud-free revival for Bose SoundTouch speakers (unofficial)"
  homepage "https://st-reborn.de/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself in place (it swaps its own bundle), so brew must not
  # fight it on `brew upgrade`.
  auto_updates true
  depends_on macos: ">= :monterey"

  app "ST Reborn.app"

  zap trash: [
    "~/Library/Application Support/ST Reborn",
    "~/Library/Application Support/STReborn",
    "~/Library/Caches/de.st-reborn.app",
    "~/Library/Caches/STReborn",
    "~/Library/HTTPStorages/de.st-reborn.app",
    "~/Library/Preferences/de.st-reborn.app.plist",
    "~/Library/Saved Application State/de.st-reborn.app.savedState",
    "~/Library/WebKit/de.st-reborn.app",
  ]
end
