cask "clearly" do
  version "3.2.0"
  sha256 "6b73afd1fb2d80c4d99a6fac1106df7cbebcd50df7be4d16e69058107eb0befb"

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
