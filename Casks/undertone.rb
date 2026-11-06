cask "undertone" do
  version "0.4.1"
  sha256 "bcd2c975ce37f2e2518b5cb7d9cb8b04337dc42ec7e3c71d5a3dd1fe53ec9217"

  url "https://github.com/karbassi/undertone/releases/download/v#{version}/Undertone.zip"
  name "Undertone"
  desc "Menu bar YouTube audio player that resumes long mixes"
  homepage "https://github.com/karbassi/undertone"

  depends_on formula: "yt-dlp"
  depends_on macos: :tahoe

  app "Undertone.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "{{appdir}}/Undertone.app"]
  end

  uninstall quit: "com.jverissimo.undertone"

  zap trash: [
    "~/Library/Caches/com.jverissimo.undertone",
    "~/Library/HTTPStorages/com.jverissimo.undertone",
    "~/Library/Preferences/com.jverissimo.undertone.plist",
  ]
end
