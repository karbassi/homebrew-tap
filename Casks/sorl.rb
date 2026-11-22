cask "sorl" do
  version "1.1.0"
  sha256 "91d9fc49994e636c157d2759b661ace3b62396d8b4db00e1638bca44a3193ad7"

  url "https://github.com/karbassi/sorl/releases/download/v#{version}/Sorl.zip"
  name "Sorl"
  desc "Menu bar YouTube audio player that resumes long mixes"
  homepage "https://github.com/karbassi/sorl"

  depends_on formula: "yt-dlp"
  depends_on macos: :tahoe

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
