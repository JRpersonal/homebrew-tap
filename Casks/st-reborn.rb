cask "st-reborn" do
  version "1.0.16"
  sha256 "bc2a0e23cc18995b1ad6d4e4f0691bb2a197486dccb79b41b85f5bcbbbb64d26"

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
