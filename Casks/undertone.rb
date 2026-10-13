cask "undertone" do
  version "0.2.0"
  sha256 "eaf74ab52ce31214b961793842605ff4e7842b370cb86000c962f888d8103477"

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

  zap trash: "~/Library/Preferences/com.jverissimo.undertone.plist"
end
