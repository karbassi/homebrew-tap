cask "undertone" do
  version "0.4.0"
  sha256 "846d408d311c3f531dab3069855b586a11464fbedd795926700824a2d0ad6469"

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
