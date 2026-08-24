cask "clearly" do
  version "3.3.0"
  sha256 "322831ce5fc8a70314cfc21c484b7af034142a32d2bf6f00a5a5926c642534e4"

  url "https://github.com/Shpigford/clearly/releases/download/v#{version}/Clearly.dmg"
  name "Clearly"
  desc "Markdown editor"
  homepage "https://github.com/Shpigford/clearly"

  depends_on macos: :sonoma

  app "Clearly.app"

  zap trash: [
    "~/Library/Application Support/Clearly",
    "~/Library/Caches/Clearly",
    "~/Library/Preferences/com.shpigford.clearly.plist",
  ]
end
