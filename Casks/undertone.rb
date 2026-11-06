cask "undertone" do
  version "0.3.0"
  sha256 "45a553fb830411959b2f39a357b91985efeb79043e7e0a7ae2051d68ace3f4e2"

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
