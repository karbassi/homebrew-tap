cask "sorl" do
  version "1.3.0"
  sha256 "0bca316bccbaa19a8004e375fd743217341301738eb118abd6e2c7443ec36ba4"

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
