cask "undertone" do
  version "0.2.0-rc.1"
  sha256 "96224e8898422072a6805a5c8fe3e72c92a1714722e6ddcba9b774c43c4cfb01"

  url "https://github.com/karbassi/undertone/releases/download/v#{version}/Undertone.zip"
  name "Undertone"
  desc "Menu bar YouTube audio player that resumes long mixes"
  homepage "https://github.com/karbassi/undertone"

  depends_on formula: "deno"
  depends_on formula: "yt-dlp"
  depends_on macos: :tahoe

  app "Undertone.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "{{appdir}}/Undertone.app"]
  end

  uninstall quit: "com.jverissimo.undertone"

  zap trash: "~/Library/Preferences/com.jverissimo.undertone.plist"
end
