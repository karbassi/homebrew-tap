cask "sorl" do
  version "1.2.0"
  sha256 "6ee5b424fa529f5758a3ed25d9580ae0f897c4dd1e23662b7815906857667844"

  url "https://github.com/karbassi/sorl/releases/download/v#{version}/Sorl.zip"
  name "Sorl"
  desc "Menu bar YouTube audio player that resumes long mixes"
  homepage "https://github.com/karbassi/sorl"

  depends_on formula: "yt-dlp"
  depends_on macos: :sequoia

  app "Sorl.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "{{appdir}}/Sorl.app"]
  end

  uninstall quit: "com.karbassi.sorl"

  zap trash: [
    "~/Library/Caches/com.karbassi.sorl",
    "~/Library/HTTPStorages/com.karbassi.sorl",
    "~/Library/Preferences/com.karbassi.sorl.plist",
  ]
end
