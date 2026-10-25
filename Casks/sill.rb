cask "sill" do
  version "0.5.1"
  sha256 "891d4a104023a2da5ceaf6f0a1573b333ebc1a5091b39ba376eee3f9edc9d63d"

  url "https://github.com/Saffsanity/sill/releases/download/v#{version}/Sill.dmg"
  name "Sill"
  desc "Stream desktop windows to iPhone and iPad"
  homepage "https://getsill.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sill.app"

  uninstall quit: "me.saffer.sill.mac"

  zap trash: [
    "~/Library/Application Support/me.saffer.sill.mac",
    "~/Library/Caches/me.saffer.sill.mac",
    "~/Library/Preferences/me.saffer.sill.mac.plist",
  ]
end
