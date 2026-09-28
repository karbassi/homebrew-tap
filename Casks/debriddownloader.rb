cask "debriddownloader" do
  version "1.7.1"
  sha256 "f03aa6885feb4a4dc0ed65b050b31e10811b15a500adfdf302014e8cbd00392b"

  url "https://github.com/CasaVargas/DebridDownloader/releases/download/v#{version}/DebridDownloader_#{version}_aarch64.dmg"
  name "DebridDownloader"
  desc "Real-Debrid download manager with Jellyfin/Plex auto-organize"
  homepage "https://github.com/CasaVargas/DebridDownloader"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DebridDownloader.app"

  zap trash: [
    "~/Library/Application Support/com.casavargas.debriddownloader",
    "~/Library/Caches/com.casavargas.debriddownloader",
    "~/Library/Preferences/com.casavargas.debriddownloader.plist",
  ]
end
