cask "sorl" do
  version "1.5.0"
  sha256 "a4f2b9ff6ac5798929743ac754d43abb973ef8666fe597b6321719c7b1482979"

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
