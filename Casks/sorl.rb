cask "sorl" do
  version "1.4.0"
  sha256 "eed91bad4fc476ae07d685958c9931c311a6d9557b198f7e18860ef8c3f347ed"

  url "https://github.com/karbassi/sorl/releases/download/v#{version}/Sorl.zip"
  name "Sorl"
  desc "Menu bar YouTube audio player that resumes long mixes"
  homepage "https://github.com/karbassi/sorl"

  depends_on formula: "yt-dlp"
  depends_on macos: :sequoia

  app "Sorl.app"

  uninstall quit: "com.karbassi.sorl"

  zap trash: [
    "~/Library/Caches/com.karbassi.sorl",
    "~/Library/HTTPStorages/com.karbassi.sorl",
    "~/Library/Preferences/com.karbassi.sorl.plist",
  ]
end
