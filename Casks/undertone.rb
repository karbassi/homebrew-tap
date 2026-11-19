cask "undertone" do
  version "0.5.0"
  sha256 "f7b0dcec04a0e44f0e5baf4f9439619dde90e642c0a11c9a8dce4bc7e6f5e76a"

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
