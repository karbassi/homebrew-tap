cask "clearly" do
  version "1.14.0"
  sha256 "7c90e06841cac21aefdd034c7f58ecb43a6dbbf828d5a76a66fc82e87a7f2813"

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
