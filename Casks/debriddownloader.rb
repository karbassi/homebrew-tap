cask "debriddownloader" do
  version "1.6.3"
  sha256 "b41c633691dcf7fa0c69180cde783cb4ebbd3aa2393fa5c6546528d44c927851"

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
